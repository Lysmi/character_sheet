import 'dart:collection';

import 'package:flutter/material.dart';

import '../hive/ability_model.dart';
import '../hive/character_model.dart';
import '../hive/skill_model.dart';

class CharacterProviderModel extends ChangeNotifier {
  final CharacterModel _character = CharacterModel(
    abilityList: {
      Ability.strength: AbilityModel(),
      Ability.dexterity: AbilityModel(),
      Ability.constitution: AbilityModel(),
      Ability.intelligence: AbilityModel(),
      Ability.wisdom: AbilityModel(),
      Ability.charisma: AbilityModel(),
    },
    skillList: {
      Skill.arcana: SkillModel(),
      Skill.acrobatics: SkillModel(),
      Skill.animalHandling: SkillModel(),
      Skill.athletics: SkillModel(),
      Skill.deception: SkillModel(),
      Skill.history: SkillModel(),
      Skill.insight: SkillModel(),
      Skill.intimidation: SkillModel(),
      Skill.investigation: SkillModel(),
      Skill.medicine: SkillModel(),
      Skill.nature: SkillModel(),
      Skill.perception: SkillModel(),
      Skill.performance: SkillModel(),
      Skill.persuasion: SkillModel(),
      Skill.religion: SkillModel(),
      Skill.sleightOfHand: SkillModel(),
      Skill.stealth: SkillModel(),
      Skill.survival: SkillModel(),
    },
  );

  get name => _character.name;

  get race => _character.race;

  get subrace => _character.subrace;

  get classes => UnmodifiableListView(_character.classes);

  get xp => _character.xp;

  get background => _character.background;

  get alignmentLaw => _character.alignmentLaw;

  get alignmentGood => _character.alignmentGood;

  get inspiration => _character.inspiration;

  get ac => _character.ac;

  get initiative => abilityBonus(Ability.dexterity) + _character.initiativeBonus;

  get speed => _character.speed;

  get deathSaveFailure => UnmodifiableListView(_character.deathSaveFailure);

  get deathSaveSuccess => UnmodifiableListView(_character.deathSaveSuccess);

  get maxHit => _character.maxHit;

  get currentHit => _character.currentHit;

  get tempHit => _character.tempHit;

  int abilityBonus(Ability ability) => (_character.abilityList[ability]?.value ?? 10) - 10 ~/ 2;

  int abilityValue(Ability ability) => _character.abilityList[ability]?.value ?? 10;

  int skillValue(Skill skill) => _character.skillList[skill]?.bonus??0 + abilityBonus(skillFromAbility[skill]??Ability.strength);
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
