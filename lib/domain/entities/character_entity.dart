import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/domain/entities/skill_entity.dart';
import 'package:equatable/equatable.dart';

import 'ability_entity.dart';
import 'class_entity.dart';

class CharacterEntity extends Equatable {
  int key;
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
    this.key = 0,
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
    return abilities.abilityModifier(searchSkill.skillAbility) +
        searchSkill.data.bonus +
        (searchSkill.data.proficiency ? proficiencyBonus : 0);
  }

  get initiativeValue => abilities.abilityModifier(Abilities.dexterity) + initiativeBonus;

  @override
  List<Object?> get props => [
        name,
        race,
        subrace,
        classes,
        experience,
        background,
        alignmentLaw,
        alignmentGood,
        inspiration,
        armorClass,
        initiativeBonus,
        speed,
        deathSaveSuccess,
        deathSaveFailure,
        maxHit,
        currentHit,
        tempHit,
        abilities,
        skills,
      ];
}
