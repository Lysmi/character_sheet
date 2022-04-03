import 'package:equatable/equatable.dart';

class SkillEntity extends Equatable {
  bool proficiency;
  int bonus;

  SkillEntity({
    required this.proficiency,
    required this.bonus,
  });

  @override
  List<Object?> get props => [proficiency, bonus];
}

class SkillList extends Equatable {
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

  SkillList({
    required this.acrobatics,
    required this.animalHandling,
    required this.arcana,
    required this.athletics,
    required this.deception,
    required this.history,
    required this.insight,
    required this.intimidation,
    required this.investigation,
    required this.medicine,
    required this.nature,
    required this.perception,
    required this.performance,
    required this.persuasion,
    required this.religion,
    required this.sleightOfHand,
    required this.stealth,
    required this.survival,
  });

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
