import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/domain/entities/feat_entity.dart';
import 'package:character_sheet/domain/entities/skill_entity.dart';

import 'ability_entity.dart';
import 'class_entity.dart';

class CharacterEntity {
  int key;
  String? imagePath;
  String name;
  String race;
  String subrace;
  List<ClassEntity> classes;
  int experience;
  String background;
  AlignmentLaw alignmentLaw;
  AlignmentGood alignmentGood;
  bool inspiration;
  int armorClass;
  int initiativeBonus;
  int speed;
  List<bool> deathSaveFailure;
  List<bool> deathSaveSuccess;
  int maxHit;
  int currentHit;
  int tempHit;
  CharactersAbilities abilities;
  CharactersSkills skills;
  List<FeatEntity> feats;

  CharacterEntity({
    required this.name,
    required this.race,
    required this.subrace,
    required this.classes,
    required this.experience,
    required this.background,
    required this.alignmentLaw,
    required this.alignmentGood,
    required this.inspiration,
    required this.armorClass,
    required this.initiativeBonus,
    required this.speed,
    required this.deathSaveFailure,
    required this.deathSaveSuccess,
    required this.maxHit,
    required this.currentHit,
    required this.tempHit,
    required this.abilities,
    required this.skills,
    required this.feats,
    this.key = 0,
    this.imagePath,
  });

  int get lvl {
    int newLvl = 0;
    for (var element in classes) {
      newLvl += element.lvl;
    }
    return newLvl;
  }

  int get proficiencyBonus => lvl ~/ 4 + 2;

  int getSkillValue(Skills skill) {
    var searchSkill = skills.getSkillEntity(skill);
    return abilities.getAbilityEntity(searchSkill.skillAbility).data.getModifier() +
        searchSkill.data.bonus +
        (searchSkill.data.proficiency ? proficiencyBonus : 0);
  }

  int getAbilityValue(Abilities ability) => abilities.getAbilityEntity(ability).data.value;

  int getAbilityModifier(Abilities ability) =>
      abilities.getAbilityEntity(ability).data.getModifier();

  int getSavingThrowValue(Abilities ability) =>
      abilities.getAbilityEntity(ability).data.getSavingThrow(proficiencyBonus);

  get initiativeValue =>
      abilities.getAbilityEntity(Abilities.dexterity).data.getModifier() + initiativeBonus;
}
