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
    this.ac = 0,
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

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String race;

  @HiveField(2)
  final String subrace;

  @HiveField(3)
  final List<ClassModel> classes;

  @HiveField(4)
  final int xp;

  @HiveField(5)
  final String background;

  @HiveField(6)
  final AlignmentLaw alignmentLaw;

  @HiveField(7)
  final AlignmentGood alignmentGood;

  @HiveField(8)
  final bool inspiration;

  @HiveField(9)
  final int ac;

  @HiveField(10)
  final int initiativeBonus;

  @HiveField(11)
  final int speed;

  @HiveField(12)
  final List<bool> deathSaveFailure;

  @HiveField(13)
  final List<bool> deathSaveSuccess;

  @HiveField(14)
  final int maxHit;

  @HiveField(15)
  final int currentHit;

  @HiveField(16)
  final int tempHit;

  @HiveField(17)
  final Map<Ability, AbilityModel> abilityList;

  @HiveField(18)
  final Map<Skill, SkillModel> skillList;
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
