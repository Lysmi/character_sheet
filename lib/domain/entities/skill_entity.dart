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

  SkillEntity({
    required this.data,
    required this.skill,
  });

  @override
  List<Object?> get props => [data, skill];
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
  }): acrobatics = SkillEntity(data: acrobatics, skill: Skills.acrobatics),
        animalHandling = SkillEntity(data: animalHandling, skill: Skills.animalHandling),
        arcana = SkillEntity(data: arcana, skill: Skills.arcana),
        athletics = SkillEntity(data: athletics, skill: Skills.athletics),
        deception = SkillEntity(data: deception, skill: Skills.deception),
        history = SkillEntity(data: history, skill: Skills.history),
        insight = SkillEntity(data: insight, skill: Skills.insight),
        intimidation = SkillEntity(data: intimidation, skill: Skills.intimidation),
        investigation = SkillEntity(data: investigation, skill: Skills.investigation),
        medicine = SkillEntity(data: medicine, skill: Skills.medicine),
        nature = SkillEntity(data: nature, skill: Skills.nature),
        perception = SkillEntity(data: perception, skill: Skills.perception),
        performance = SkillEntity(data: performance, skill: Skills.performance),
        persuasion = SkillEntity(data: persuasion, skill: Skills.persuasion),
        religion = SkillEntity(data: religion, skill: Skills.religion),
        sleightOfHand = SkillEntity(data: sleightOfHand, skill: Skills.sleightOfHand),
        stealth = SkillEntity(data: stealth, skill: Skills.stealth),
        survival = SkillEntity(data: survival, skill: Skills.survival);

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
