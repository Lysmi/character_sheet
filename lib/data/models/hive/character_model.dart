import 'package:character_sheet/data/models/hive/ability_model.dart';
import 'package:character_sheet/data/models/hive/class_model.dart';
import 'package:character_sheet/data/models/hive/skill_model.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:hive/hive.dart';

import '../../../domain/entities/skill_entity.dart';

part 'character_model.g.dart';

@HiveType(typeId: 5)
class CharacterModel extends HiveObject {
  CharacterModel({
    int id = 0,
    this.name = '',
    this.race = '',
    this.subrace = '',
    this.classes = const [],
    this.xp = 0,
    this.background = '',
    this.alignmentLaw = AlignmentLaw.neutral,
    this.alignmentGood = AlignmentGood.neutral,
    this.inspiration = false,
    this.ac = 10,
    this.initiativeBonus = 0,
    this.speed = 30,
    this.deathSaveFailure = const [false, false, false],
    this.deathSaveSuccess = const [false, false, false],
    this.maxHit = 1,
    this.currentHit = 1,
    this.tempHit = 0,
    required this.abilityList,
    required this.skillList,
  });

  @HiveField(19)
  int id = 0;

  @HiveField(0)
  String name;

  @HiveField(1)
  String race;

  @HiveField(2)
  String subrace;

  @HiveField(3)
  List<ClassModel> classes;

  @HiveField(4)
  int xp;

  @HiveField(5)
  String background;

  @HiveField(6)
  AlignmentLaw alignmentLaw;

  @HiveField(7)
  AlignmentGood alignmentGood;

  @HiveField(8)
  bool inspiration;

  @HiveField(9)
  int ac;

  @HiveField(10)
  int initiativeBonus;

  @HiveField(11)
  int speed;

  @HiveField(12)
  List<bool> deathSaveFailure;

  @HiveField(13)
  List<bool> deathSaveSuccess;

  @HiveField(14)
  int maxHit;

  @HiveField(15)
  int currentHit;

  @HiveField(16)
  int tempHit;

  @HiveField(17)
  Map<Ability, AbilityModel> abilityList;

  @HiveField(18)
  Map<Skill, SkillModel> skillList;

  CharacterEntity toEntity() => CharacterEntity(
      id: id,
      name: name,
      race: race,
      subrace: subrace,
      classes: classes.map((e) => e.toEntity()).toList(),
      xp: xp,
      background: background,
      alignmentLaw: alignmentLaw,
      alignmentGood: alignmentGood,
      inspiration: inspiration,
      ac: ac,
      initiativeBonus: initiativeBonus,
      speed: speed,
      deathSaveFailure: deathSaveFailure,
      deathSaveSuccess: deathSaveSuccess,
      maxHit: maxHit,
      currentHit: currentHit,
      tempHit: tempHit,
      abilityList: AbilityList(
        strength: abilityList[Ability.strength]?.toEntity() ??
            AbilityEntity(value: 10, saveProficiency: false, saveBonus: 0),
        dexterity: abilityList[Ability.dexterity]?.toEntity() ??
            AbilityEntity(value: 10, saveProficiency: false, saveBonus: 0),
        constitution: abilityList[Ability.constitution]?.toEntity() ??
            AbilityEntity(value: 10, saveProficiency: false, saveBonus: 0),
        intelligence: abilityList[Ability.intelligence]?.toEntity() ??
            AbilityEntity(value: 10, saveProficiency: false, saveBonus: 0),
        wisdom: abilityList[Ability.wisdom]?.toEntity() ??
            AbilityEntity(value: 10, saveProficiency: false, saveBonus: 0),
        charisma: abilityList[Ability.charisma]?.toEntity() ??
            AbilityEntity(value: 10, saveProficiency: false, saveBonus: 0),
      ),
      skillList: SkillList(
          acrobatics: skillList[Skill.acrobatics]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          animalHandling: skillList[Skill.animalHandling]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          arcana: skillList[Skill.arcana]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          athletics: skillList[Skill.athletics]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          deception: skillList[Skill.deception]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          history: skillList[Skill.history]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          insight: skillList[Skill.insight]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          intimidation: skillList[Skill.intimidation]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          investigation: skillList[Skill.investigation]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          medicine: skillList[Skill.medicine]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          nature: skillList[Skill.nature]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          perception: skillList[Skill.perception]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          performance: skillList[Skill.performance]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          persuasion: skillList[Skill.persuasion]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          religion: skillList[Skill.religion]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          sleightOfHand: skillList[Skill.sleightOfHand]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          stealth: skillList[Skill.stealth]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0),
          survival: skillList[Skill.survival]?.toEntity() ??
              SkillEntity(proficiency: false, bonus: 0)));

  factory CharacterModel.fromEntity(CharacterEntity entity) => CharacterModel(
        id: entity.id,
        name: entity.name,
        race: entity.race,
        subrace: entity.subrace,
        classes: entity.classes.map((e) => ClassModel.fromEntity(e)).toList(),
        xp: entity.xp,
        background: entity.background,
        alignmentLaw: entity.alignmentLaw,
        alignmentGood: entity.alignmentGood,
        inspiration: entity.inspiration,
        ac: entity.ac,
        initiativeBonus: entity.initiativeBonus,
        speed: entity.speed,
        deathSaveFailure: entity.deathSaveFailure,
        deathSaveSuccess: entity.deathSaveSuccess,
        maxHit: entity.maxHit,
        currentHit: entity.currentHit,
        tempHit: entity.tempHit,
        abilityList: {
          Ability.strength:
              AbilityModel.fromEntity(entity.abilityList.strength),
          Ability.dexterity:
              AbilityModel.fromEntity(entity.abilityList.dexterity),
          Ability.constitution:
              AbilityModel.fromEntity(entity.abilityList.constitution),
          Ability.intelligence:
              AbilityModel.fromEntity(entity.abilityList.intelligence),
          Ability.wisdom: AbilityModel.fromEntity(entity.abilityList.wisdom),
          Ability.charisma:
              AbilityModel.fromEntity(entity.abilityList.charisma),
        },
        skillList: {
          Skill.arcana: SkillModel.fromEntity(entity.skillList.arcana),
          Skill.acrobatics: SkillModel.fromEntity(entity.skillList.acrobatics),
          Skill.animalHandling:
              SkillModel.fromEntity(entity.skillList.animalHandling),
          Skill.athletics: SkillModel.fromEntity(entity.skillList.athletics),
          Skill.deception: SkillModel.fromEntity(entity.skillList.deception),
          Skill.history: SkillModel.fromEntity(entity.skillList.history),
          Skill.insight: SkillModel.fromEntity(entity.skillList.insight),
          Skill.intimidation:
              SkillModel.fromEntity(entity.skillList.intimidation),
          Skill.investigation:
              SkillModel.fromEntity(entity.skillList.investigation),
          Skill.medicine: SkillModel.fromEntity(entity.skillList.medicine),
          Skill.nature: SkillModel.fromEntity(entity.skillList.nature),
          Skill.perception: SkillModel.fromEntity(entity.skillList.perception),
          Skill.performance:
              SkillModel.fromEntity(entity.skillList.performance),
          Skill.persuasion: SkillModel.fromEntity(entity.skillList.persuasion),
          Skill.religion: SkillModel.fromEntity(entity.skillList.religion),
          Skill.sleightOfHand:
              SkillModel.fromEntity(entity.skillList.sleightOfHand),
          Skill.stealth: SkillModel.fromEntity(entity.skillList.stealth),
          Skill.survival: SkillModel.fromEntity(entity.skillList.survival),
        },
      );
}

@HiveType(typeId: 6)
enum AlignmentLaw {
  @HiveField(0)
  lawful,
  @HiveField(1)
  neutral,
  @HiveField(2)
  chaotic,
}

@HiveType(typeId: 7)
enum AlignmentGood {
  @HiveField(0)
  good,
  @HiveField(1)
  neutral,
  @HiveField(2)
  evil,
}
