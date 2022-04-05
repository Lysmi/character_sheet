import 'package:hive/hive.dart';

import '../../../domain/entities/skill_entity.dart';

part 'skill_model.g.dart';

@HiveType(typeId: 6)
class SkillModel {
  SkillModel({
    this.proficiency = false,
    this.bonus = 0,
  });

  @HiveField(0)
  final bool proficiency;
  @HiveField(1)
  final int bonus;

  SkillDataEntity toEntity() =>
      SkillDataEntity(proficiency: proficiency, bonus: bonus);

  factory SkillModel.fromEntity(SkillDataEntity entity) => SkillModel(
        proficiency: entity.proficiency,
        bonus: entity.bonus,
      );
}

@HiveType(typeId: 7)
class CharactersSkillsModel {
  @HiveField(0)
  SkillModel acrobatics;
  @HiveField(1)
  SkillModel animalHandling;
  @HiveField(2)
  SkillModel arcana;
  @HiveField(3)
  SkillModel athletics;
  @HiveField(4)
  SkillModel deception;
  @HiveField(5)
  SkillModel history;
  @HiveField(6)
  SkillModel insight;
  @HiveField(7)
  SkillModel intimidation;
  @HiveField(8)
  SkillModel investigation;
  @HiveField(9)
  SkillModel medicine;
  @HiveField(10)
  SkillModel nature;
  @HiveField(11)
  SkillModel perception;
  @HiveField(12)
  SkillModel performance;
  @HiveField(13)
  SkillModel persuasion;
  @HiveField(14)
  SkillModel religion;
  @HiveField(15)
  SkillModel sleightOfHand;
  @HiveField(16)
  SkillModel stealth;
  @HiveField(17)
  SkillModel survival;

  CharactersSkillsModel({
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

  CharactersSkills toEntity() => CharactersSkills(
      acrobatics: acrobatics.toEntity(),
      animalHandling: animalHandling.toEntity(),
      arcana: arcana.toEntity(),
      athletics: athletics.toEntity(),
      deception: deception.toEntity(),
      history: history.toEntity(),
      insight: insight.toEntity(),
      intimidation: intimidation.toEntity(),
      investigation: investigation.toEntity(),
      medicine: medicine.toEntity(),
      nature: nature.toEntity(),
      perception: perception.toEntity(),
      performance: performance.toEntity(),
      persuasion: persuasion.toEntity(),
      religion: religion.toEntity(),
      sleightOfHand: sleightOfHand.toEntity(),
      stealth: stealth.toEntity(),
      survival: survival.toEntity());

  factory CharactersSkillsModel.fromEntity(CharactersSkills entity) => CharactersSkillsModel(
      acrobatics: SkillModel.fromEntity(entity.acrobatics.data),
      animalHandling: SkillModel.fromEntity(entity.animalHandling.data),
      arcana: SkillModel.fromEntity(entity.arcana.data),
      athletics: SkillModel.fromEntity(entity.athletics.data),
      deception: SkillModel.fromEntity(entity.deception.data),
      history: SkillModel.fromEntity(entity.history.data),
      insight: SkillModel.fromEntity(entity.insight.data),
      intimidation: SkillModel.fromEntity(entity.intimidation.data),
      investigation: SkillModel.fromEntity(entity.investigation.data),
      medicine: SkillModel.fromEntity(entity.medicine.data),
      nature: SkillModel.fromEntity(entity.nature.data),
      perception: SkillModel.fromEntity(entity.perception.data),
      performance: SkillModel.fromEntity(entity.performance.data),
      persuasion: SkillModel.fromEntity(entity.persuasion.data),
      religion: SkillModel.fromEntity(entity.religion.data),
      sleightOfHand: SkillModel.fromEntity(entity.sleightOfHand.data),
      stealth: SkillModel.fromEntity(entity.stealth.data),
      survival: SkillModel.fromEntity(entity.survival.data));
}
