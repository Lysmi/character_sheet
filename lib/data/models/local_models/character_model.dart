import 'package:character_sheet/data/models/local_models/ability_model.dart';
import 'package:character_sheet/data/models/local_models/class_model.dart';
import 'package:character_sheet/data/models/local_models/skill_model.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:hive/hive.dart';

part 'character_model.g.dart';

@HiveType(typeId: 2)
class CharacterModel {
  CharacterModel({
    this.name = '',
    this.race = '',
    this.subrace = '',
    this.classes = const [],
    this.experience = 0,
    this.background = '',
    this.alignmentLaw = AlignmentLaw.neutral,
    this.alignmentGood = AlignmentGood.neutral,
    this.inspiration = false,
    this.armorClass = 10,
    this.initiativeBonus = 0,
    this.speed = 30,
    this.deathSaveFailure = const [false, false, false],
    this.deathSaveSuccess = const [false, false, false],
    this.maxHit = 1,
    this.currentHit = 1,
    this.tempHit = 0,
    required this.abilities,
    required this.skills,
  });

  @HiveField(0)
  String name;
  @HiveField(1)
  String race;
  @HiveField(2)
  String subrace;
  @HiveField(3)
  List<ClassModel> classes;
  @HiveField(4)
  int experience;
  @HiveField(5)
  String background;
  @HiveField(6)
  AlignmentLaw alignmentLaw;
  @HiveField(7)
  AlignmentGood alignmentGood;
  @HiveField(8)
  bool inspiration;
  @HiveField(9)
  int armorClass;
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
  CharactersAbilitiesModel abilities;
  @HiveField(18)
  CharactersSkillsModel skills;

  CharacterEntity toEntity(int key) => CharacterEntity(
        key: key,
        name: name,
        race: race,
        subrace: subrace,
        classes: classes.map((e) => e.toEntity()).toList(),
        experience: experience,
        background: background,
        alignmentLaw: alignmentLaw,
        alignmentGood: alignmentGood,
        inspiration: inspiration,
        armorClass: armorClass,
        initiativeBonus: initiativeBonus,
        speed: speed,
        deathSaveFailure: deathSaveFailure,
        deathSaveSuccess: deathSaveSuccess,
        maxHit: maxHit,
        currentHit: currentHit,
        tempHit: tempHit,
        abilities: abilities.toEntity(),
        skills: skills.toEntity(),
        feats: [],
      );

  factory CharacterModel.fromEntity(CharacterEntity entity) => CharacterModel(
        name: entity.name,
        race: entity.race,
        subrace: entity.subrace,
        classes: entity.classes.map((e) => ClassModel.fromEntity(e)).toList(),
        experience: entity.experience,
        background: entity.background,
        alignmentLaw: entity.alignmentLaw,
        alignmentGood: entity.alignmentGood,
        inspiration: entity.inspiration,
        armorClass: entity.armorClass,
        initiativeBonus: entity.initiativeBonus,
        speed: entity.speed,
        deathSaveFailure: entity.deathSaveFailure,
        deathSaveSuccess: entity.deathSaveSuccess,
        maxHit: entity.maxHit,
        currentHit: entity.currentHit,
        tempHit: entity.tempHit,
        abilities: CharactersAbilitiesModel.fromEntity(entity.abilities),
        skills: CharactersSkillsModel.fromEntity(entity.skills),
      );
}

@HiveType(typeId: 3)
enum AlignmentLaw {
  @HiveField(0)
  lawful,
  @HiveField(1)
  neutral,
  @HiveField(2)
  chaotic,
}

@HiveType(typeId: 4)
enum AlignmentGood {
  @HiveField(0)
  good,
  @HiveField(1)
  neutral,
  @HiveField(2)
  evil,
}
