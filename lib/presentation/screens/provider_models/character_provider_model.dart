import 'dart:collection';

import 'package:character_sheet/data/repositories/characters_repository_implement.dart';
import 'package:character_sheet/data/models/local_models/class_model.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:flutter/material.dart';

import '../../../data/models/local_models/ability_model.dart';
import '../../../data/models/local_models/character_model.dart';

class CharacterProviderModel extends ChangeNotifier {
  final CharactersRepositoryImplement repository = CharactersRepositoryImplement();
  CharacterEntity _character;

  CharacterProviderModel() {
    if (!repository.haveCharacterWithKey(0)) {
      repository.addCharacter(_character);
    } else {
      _character = repository.getCharacterAt(0);
    }
  }

  get name => _character.name;

  get race => _character.race;

  get subrace => _character.subrace;

  get classes => UnmodifiableListView(_character.classes);

  get xp => _character.xp;

  get lvl {
    int newLvl = 0;
    for (var element in _character.classes) {
      newLvl += element.lvl;
    }
    return newLvl;
  }

  get background => _character.background;

  get alignmentLaw => _character.alignmentLaw;

  get alignmentGood => _character.alignmentGood;

  get inspiration => _character.inspiration;

  get ac => _character.ac;

  get initiative => abilityBonus(Ability.dexterity) + _character.initiativeBonus;

  get speed => _character.speed;

  get deathSaveFailure => UnmodifiableListView(_character.deathSaveFailure);

  get deathSaveSuccess => UnmodifiableListView(_character.deathSaveSuccess);

  void changeDeathSaveFailure(int index){
    _character.deathSaveFailure[index] = !_character.deathSaveFailure[index];
    repository.putCharacter(_character);
    notifyListeners();
  }

  void changeDeathSaveSuccess(int index){
    _character.deathSaveSuccess[index] = !_character.deathSaveSuccess[index];
    repository.putCharacter(_character);
    notifyListeners();
  }

  get maxHit => _character.maxHit;

  get currentHit => _character.currentHit;

  get tempHit => _character.tempHit;

  get proficiencyBonus => lvl~/4+2;

  int abilityBonus(Ability ability) => ((_character.abilities[ability]?.value ?? 10) - 10) ~/ 2;

  int abilityValue(Ability ability) => _character.abilities[ability]?.value ?? 10;

  int skillValue(Skill skill) =>
      _character.skills[skill]?.bonus ??
      0 + abilityBonus(skillFromAbility[skill] ?? Ability.strength);

  void addHit(int value) {
    _character.currentHit -= value;
    repository.putCharacter(_character);
    notifyListeners();
  }

  void removeHit(int value) {
    _character.currentHit += value;
    repository.putCharacter(_character);
    notifyListeners();
  }
}

const skillFromAbility = {
  Skill.arcana: Ability.intelligence,
  Skill.acrobatics: Ability.dexterity,
  Skill.animalHandling: Ability.wisdom,
  Skill.athletics: Ability.strength,
  Skill.deception: Ability.charisma,
  Skill.history: Ability.intelligence,
  Skill.insight: Ability.wisdom,
  Skill.intimidation: Ability.charisma,
  Skill.investigation: Ability.intelligence,
  Skill.medicine: Ability.wisdom,
  Skill.nature: Ability.intelligence,
  Skill.perception: Ability.wisdom,
  Skill.performance: Ability.charisma,
  Skill.persuasion: Ability.charisma,
  Skill.religion: Ability.intelligence,
  Skill.sleightOfHand: Ability.dexterity,
  Skill.stealth: Ability.dexterity,
  Skill.survival: Ability.wisdom,
};
