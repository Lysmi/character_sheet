import 'dart:collection';

import 'package:character_sheet/data/models/local_models/class_model.dart';
import 'package:character_sheet/data/repositories/characters_repository_implement.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/domain/entities/class_entity.dart';
import 'package:character_sheet/domain/entities/skill_entity.dart';
import 'package:character_sheet/domain/usecases/characters_read.dart';
import 'package:flutter/material.dart';

import '../../../core/helpers.dart';
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

  get name => _currentCharacter.name;

  get race => _currentCharacter.race;

  get subrace => _currentCharacter.subrace;

  UnmodifiableListView<ClassEntity> get classes => UnmodifiableListView(_currentCharacter.classes);

  get xp => _currentCharacter.experience;

  get lvl => _currentCharacter.lvl;

  get proficiencyBonus => _currentCharacter.proficiencyBonus;

  get background => _currentCharacter.background;

  get alignmentLaw => _currentCharacter.alignmentLaw;

  get alignmentGood => _currentCharacter.alignmentGood;

  get inspiration => _currentCharacter.inspiration;

  get initiative => _currentCharacter.initiativeValue;

  get ac => _currentCharacter.armorClass;

  get speed => _currentCharacter.speed;

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

  get maxHit => _currentCharacter.maxHit;

  get currentHit => _currentCharacter.currentHit;

  get tempHit => _currentCharacter.tempHit;

  void addHit(int value) {
    _currentCharacter.currentHit -= value;
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }

  void removeHit(int value) {
    _currentCharacter.currentHit += value;
    _charactersWrite.putCharacter(_currentCharacter);
    notifyListeners();
  }

  int getAbilityModifier(Abilities ability) {
    return _currentCharacter.getAbilityModifier(ability);
  }

  int getAbilityValue(Abilities ability){
    return _currentCharacter.getAbilityValue(ability);
  }

  int getSkillValue(Skills skill){
    return _currentCharacter.getSkillValue(skill);
  }


}