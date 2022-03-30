import 'package:character_sheet/data/models/hive/ability_model.dart';
import 'package:character_sheet/data/models/hive/class_model.dart';
import 'package:character_sheet/data/models/hive/skill_model.dart';
import 'package:hive/hive.dart';

part 'character_model.g.dart';

@HiveType(typeId: 5)
class CharacterModel extends HiveObject {
  CharacterModel({
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
    required this.id,
  });
  @HiveField(19)
  int id;

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
