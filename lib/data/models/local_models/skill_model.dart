import 'package:objectbox/objectbox.dart';

import '../../../domain/entities/skill_entity.dart';

@Entity()
class SkillDataModel {
  SkillDataModel({
    this.proficiency = false,
    this.bonus = 0,
  });

  int id = 0;
  final bool proficiency;
  final int bonus;

  SkillDataEntity toEntity() =>
      SkillDataEntity(proficiency: proficiency, bonus: bonus);

  factory SkillDataModel.fromEntity(SkillDataEntity entity) => SkillDataModel(
        proficiency: entity.proficiency,
        bonus: entity.bonus,
      );
}

@Entity()
class SkillModel {
  int id = 0;
  SkillDataModel data;
  final Skills skill;

  SkillModel({
    required this.data,
    required this.skill,
  });

  SkillEntity toEntity() => SkillEntity(data: data.toEntity(), skill: skill);

  factory SkillModel.fromEntity(SkillEntity entity) => SkillModel(
      data: SkillDataModel.fromEntity(entity.data), skill: entity.skill);
}

@Entity()
class SkillListModel {
  int id = 0;
  SkillModel acrobatics;
  SkillModel animalHandling;
  SkillModel arcana;
  SkillModel athletics;
  SkillModel deception;
  SkillModel history;
  SkillModel insight;
  SkillModel intimidation;
  SkillModel investigation;
  SkillModel medicine;
  SkillModel nature;
  SkillModel perception;
  SkillModel performance;
  SkillModel persuasion;
  SkillModel religion;
  SkillModel sleightOfHand;
  SkillModel stealth;
  SkillModel survival;

  SkillListModel({
    required SkillDataModel acrobatics,
    required SkillDataModel animalHandling,
    required SkillDataModel arcana,
    required SkillDataModel athletics,
    required SkillDataModel deception,
    required SkillDataModel history,
    required SkillDataModel insight,
    required SkillDataModel intimidation,
    required SkillDataModel investigation,
    required SkillDataModel medicine,
    required SkillDataModel nature,
    required SkillDataModel perception,
    required SkillDataModel performance,
    required SkillDataModel persuasion,
    required SkillDataModel religion,
    required SkillDataModel sleightOfHand,
    required SkillDataModel stealth,
    required SkillDataModel survival,
  })  : acrobatics = SkillModel(data: acrobatics, skill: Skills.acrobatics),
        animalHandling =
            SkillModel(data: animalHandling, skill: Skills.animalHandling),
        arcana = SkillModel(data: arcana, skill: Skills.arcana),
        athletics = SkillModel(data: athletics, skill: Skills.athletics),
        deception = SkillModel(data: deception, skill: Skills.deception),
        history = SkillModel(data: history, skill: Skills.history),
        insight = SkillModel(data: insight, skill: Skills.insight),
        intimidation =
            SkillModel(data: intimidation, skill: Skills.intimidation),
        investigation =
            SkillModel(data: investigation, skill: Skills.investigation),
        medicine = SkillModel(data: medicine, skill: Skills.medicine),
        nature = SkillModel(data: nature, skill: Skills.nature),
        perception = SkillModel(data: perception, skill: Skills.perception),
        performance = SkillModel(data: performance, skill: Skills.performance),
        persuasion = SkillModel(data: persuasion, skill: Skills.persuasion),
        religion = SkillModel(data: religion, skill: Skills.religion),
        sleightOfHand =
            SkillModel(data: sleightOfHand, skill: Skills.sleightOfHand),
        stealth = SkillModel(data: stealth, skill: Skills.stealth),
        survival = SkillModel(data: survival, skill: Skills.survival);

  SkillList toEntity() => SkillList(
      acrobatics: acrobatics.data.toEntity(),
      animalHandling: animalHandling.data.toEntity(),
      arcana: arcana.data.toEntity(),
      athletics: athletics.data.toEntity(),
      deception: deception.data.toEntity(),
      history: history.data.toEntity(),
      insight: insight.data.toEntity(),
      intimidation: intimidation.data.toEntity(),
      investigation: investigation.data.toEntity(),
      medicine: medicine.data.toEntity(),
      nature: nature.data.toEntity(),
      perception: perception.data.toEntity(),
      performance: performance.data.toEntity(),
      persuasion: persuasion.data.toEntity(),
      religion: religion.data.toEntity(),
      sleightOfHand: sleightOfHand.data.toEntity(),
      stealth: stealth.data.toEntity(),
      survival: survival.data.toEntity());

  factory SkillListModel.fromEntity(SkillList entity) => SkillListModel(
      acrobatics: SkillDataModel.fromEntity(entity.acrobatics.data),
      animalHandling: SkillDataModel.fromEntity(entity.animalHandling.data),
      arcana: SkillDataModel.fromEntity(entity.arcana.data),
      athletics: SkillDataModel.fromEntity(entity.athletics.data),
      deception: SkillDataModel.fromEntity(entity.deception.data),
      history: SkillDataModel.fromEntity(entity.history.data),
      insight: SkillDataModel.fromEntity(entity.insight.data),
      intimidation: SkillDataModel.fromEntity(entity.intimidation.data),
      investigation: SkillDataModel.fromEntity(entity.investigation.data),
      medicine: SkillDataModel.fromEntity(entity.medicine.data),
      nature: SkillDataModel.fromEntity(entity.nature.data),
      perception: SkillDataModel.fromEntity(entity.perception.data),
      performance: SkillDataModel.fromEntity(entity.performance.data),
      persuasion: SkillDataModel.fromEntity(entity.persuasion.data),
      religion: SkillDataModel.fromEntity(entity.religion.data),
      sleightOfHand: SkillDataModel.fromEntity(entity.sleightOfHand.data),
      stealth: SkillDataModel.fromEntity(entity.stealth.data),
      survival: SkillDataModel.fromEntity(entity.survival.data));
}
