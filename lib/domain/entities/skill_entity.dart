import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:equatable/equatable.dart';

class SkillDataEntity extends Equatable {
  bool proficiency;
  int bonus;

  SkillDataEntity({
    required this.proficiency,
    required this.bonus,
  });

  @override
  List<Object?> get props => [proficiency, bonus];
}

class SkillEntity extends Equatable {
  SkillDataEntity data;
  final Skills skill;
  final Abilities skillAbility;

  SkillEntity({
    required this.data,
    required this.skill,
    required this.skillAbility,
  });

  @override
  List<Object?> get props => [data, skill, skillAbility];
}

class CharactersSkills extends Equatable {
  SkillEntity acrobatics;
  SkillEntity animalHandling;
  SkillEntity arcana;
  SkillEntity athletics;
  SkillEntity deception;
  SkillEntity history;
  SkillEntity insight;
  SkillEntity intimidation;
  SkillEntity investigation;
  SkillEntity medicine;
  SkillEntity nature;
  SkillEntity perception;
  SkillEntity performance;
  SkillEntity persuasion;
  SkillEntity religion;
  SkillEntity sleightOfHand;
  SkillEntity stealth;
  SkillEntity survival;

  CharactersSkills({
    required SkillDataEntity acrobatics,
    required SkillDataEntity animalHandling,
    required SkillDataEntity arcana,
    required SkillDataEntity athletics,
    required SkillDataEntity deception,
    required SkillDataEntity history,
    required SkillDataEntity insight,
    required SkillDataEntity intimidation,
    required SkillDataEntity investigation,
    required SkillDataEntity medicine,
    required SkillDataEntity nature,
    required SkillDataEntity perception,
    required SkillDataEntity performance,
    required SkillDataEntity persuasion,
    required SkillDataEntity religion,
    required SkillDataEntity sleightOfHand,
    required SkillDataEntity stealth,
    required SkillDataEntity survival,
  })  : acrobatics = SkillEntity(
          data: acrobatics,
          skill: Skills.acrobatics,
          skillAbility: Abilities.dexterity,
        ),
        animalHandling = SkillEntity(
          data: animalHandling,
          skill: Skills.animalHandling,
          skillAbility: Abilities.wisdom,
        ),
        arcana = SkillEntity(
          data: arcana,
          skill: Skills.arcana,
          skillAbility: Abilities.intelligence,
        ),
        athletics = SkillEntity(
          data: athletics,
          skill: Skills.athletics,
          skillAbility: Abilities.strength,
        ),
        deception = SkillEntity(
          data: deception,
          skill: Skills.deception,
          skillAbility: Abilities.charisma,
        ),
        history = SkillEntity(
          data: history,
          skill: Skills.history,
          skillAbility: Abilities.intelligence,
        ),
        insight = SkillEntity(
          data: insight,
          skill: Skills.insight,
          skillAbility: Abilities.wisdom,
        ),
        intimidation = SkillEntity(
          data: intimidation,
          skill: Skills.intimidation,
          skillAbility: Abilities.charisma,
        ),
        investigation = SkillEntity(
          data: investigation,
          skill: Skills.investigation,
          skillAbility: Abilities.intelligence,
        ),
        medicine = SkillEntity(
          data: medicine,
          skill: Skills.medicine,
          skillAbility: Abilities.wisdom,
        ),
        nature = SkillEntity(
          data: nature,
          skill: Skills.nature,
          skillAbility: Abilities.intelligence,
        ),
        perception = SkillEntity(
          data: perception,
          skill: Skills.perception,
          skillAbility: Abilities.wisdom,
        ),
        performance = SkillEntity(
          data: performance,
          skill: Skills.performance,
          skillAbility: Abilities.charisma,
        ),
        persuasion = SkillEntity(
          data: persuasion,
          skill: Skills.persuasion,
          skillAbility: Abilities.charisma,
        ),
        religion = SkillEntity(
          data: religion,
          skill: Skills.religion,
          skillAbility: Abilities.intelligence,
        ),
        sleightOfHand = SkillEntity(
          data: sleightOfHand,
          skill: Skills.sleightOfHand,
          skillAbility: Abilities.dexterity,
        ),
        stealth = SkillEntity(
          data: stealth,
          skill: Skills.stealth,
          skillAbility: Abilities.dexterity,
        ),
        survival = SkillEntity(
          data: survival,
          skill: Skills.survival,
          skillAbility: Abilities.wisdom,
        );

  @override
  List<Object?> get props => [
        acrobatics,
        animalHandling,
        arcana,
        athletics,
        deception,
        history,
        insight,
        intimidation,
        investigation,
        medicine,
        nature,
        perception,
        performance,
        persuasion,
        religion,
        sleightOfHand,
        stealth,
        survival,
      ];
}

enum Skills {
  acrobatics,
  animalHandling,
  arcana,
  athletics,
  deception,
  history,
  insight,
  intimidation,
  investigation,
  medicine,
  nature,
  perception,
  performance,
  persuasion,
  religion,
  sleightOfHand,
  stealth,
  survival,
}
