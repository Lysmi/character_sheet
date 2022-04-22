import 'dart:collection';

import 'package:character_sheet/data/models/local_models/class_model.dart';
import 'package:character_sheet/data/repositories/characters_repository_implement.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/domain/entities/class_entity.dart';
import 'package:character_sheet/domain/entities/skill_entity.dart';
import 'package:character_sheet/domain/usecases/characters_read.dart';
import 'package:flutter/material.dart';

import '../../../core/string_convertation.dart';
import '../../../data/models/local_models/ability_model.dart';
import '../../../data/models/local_models/character_model.dart';
import '../../../domain/usecases/characters_write.dart';

class CharacterProviderModel extends ChangeNotifier {
  final CharactersRepositoryImplement _repository =
      CharactersRepositoryImplement();
  late final CharactersWrite _charactersWrite;
  late final CharactersRead _charactersRead;
  final CharacterEntity _currentCharacter;

  CharacterProviderModel(this._currentCharacter) {
    _charactersWrite = CharactersWrite(_repository);
    _charactersRead = CharactersRead(_repository);
  }

  String get name => _currentCharacter.name;

  String get race => _currentCharacter.race;

  String get subrace => _currentCharacter.subrace;

  UnmodifiableListView<ClassEntity> get classes => UnmodifiableListView(_currentCharacter.classes);

  int get xp => _currentCharacter.experience;

  int get lvl => _currentCharacter.lvl;

  int get proficiencyBonus => _currentCharacter.proficiencyBonus;

  String get background => _currentCharacter.background;

  AlignmentLaw get alignmentLaw => _currentCharacter.alignmentLaw;

  AlignmentGood get alignmentGood => _currentCharacter.alignmentGood;

  bool get inspiration => _currentCharacter.inspiration;

  int get initiative => _currentCharacter.initiativeValue;

  int get ac => _currentCharacter.armorClass;

  int get speed => _currentCharacter.speed;

  UnmodifiableListView get deathSaveFailure => UnmodifiableListView(_currentCharacter.deathSaveFailure);

  UnmodifiableListView get deathSaveSuccess => UnmodifiableListView(_currentCharacter.deathSaveSuccess);

  void changeDeathSaveFailure(int index) {
    _currentCharacter.deathSaveFailure[index] = !_currentCharacter.deathSaveFailure[index];
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }

  void changeDeathSaveSuccess(int index) {
    _currentCharacter.deathSaveSuccess[index] = !_currentCharacter.deathSaveSuccess[index];
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }

  int get maxHit => _currentCharacter.maxHit;

  int get currentHit => _currentCharacter.currentHit;

  int get tempHit => _currentCharacter.tempHit;

  int getAbilityModifier(Abilities ability) {
    return _currentCharacter.getAbilityModifier(ability);
  }

  int getSavingThrowValue(Abilities ability) {
    return _currentCharacter.getSavingThrowValue(ability);
  }

  bool getSavingThrowProficiency(Abilities ability)
  {
    return _currentCharacter.abilities.getAbilityEntity(ability).data.saveProficiency;
  }

  int getAbilityValue(Abilities ability){
    return _currentCharacter.getAbilityValue(ability);
  }

  int getSkillValue(Skills skill){
    return _currentCharacter.getSkillValue(skill);
  }

  SkillEntity getSkillEntity(Skills skill){
    return _currentCharacter.skills.getSkillEntity(skill);
  }

  void addHit(int value) {
    _currentCharacter.currentHit += value;
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }

  void addTemporaryHit(int value) {
    _currentCharacter.tempHit += value;
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }


  void removeHit(int value) {
    _currentCharacter.currentHit -= value;
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }

  void removeTemporaryHit(int value) {
    _currentCharacter.tempHit -= value;
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }

  void changeInspiration() {
    _currentCharacter.inspiration = !_currentCharacter.inspiration;
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }
}