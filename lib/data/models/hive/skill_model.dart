import 'package:character_sheet/data/models/hive/ability_model.dart';
import 'package:hive/hive.dart';

import '../../../domain/entities/skill_entity.dart';

part 'skill_model.g.dart';

@HiveType(typeId: 2)
class SkillModel extends HiveObject {
  SkillModel({
    this.proficiency = false,
    this.bonus = 0,
  });

  @HiveField(0)
  final bool proficiency;

  @HiveField(1)
  final int bonus;

  SkillEntity toEntity() => SkillEntity(proficiency: proficiency, bonus: bonus);
}

@HiveType(typeId: 3)
enum Skill {
  @HiveField(0)
  acrobatics,
  @HiveField(1)
  animalHandling,
  @HiveField(2)
  arcana,
  @HiveField(3)
  athletics,
  @HiveField(4)
  deception,
  @HiveField(5)
  history,
  @HiveField(6)
  insight,
  @HiveField(7)
  intimidation,
  @HiveField(8)
  investigation,
  @HiveField(9)
  medicine,
  @HiveField(10)
  nature,
  @HiveField(11)
  perception,
  @HiveField(12)
  performance,
  @HiveField(13)
  persuasion,
  @HiveField(14)
  religion,
  @HiveField(15)
  sleightOfHand,
  @HiveField(16)
  stealth,
  @HiveField(17)
  survival,
}
