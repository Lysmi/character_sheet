import 'package:hive/hive.dart';

part 'ability_model.g.dart';

@HiveType(typeId: 0)
class AbilityModel extends HiveObject {
  AbilityModel({
    this.value = 10,
    this.saveProficiency = false,
    this.saveBonus = 0,
  });

  @HiveField(0)
  final int value;

  @HiveField(1)
  final bool saveProficiency;

  @HiveField(2)
  final int saveBonus;
}

@HiveType(typeId: 1)
enum Ability {
  @HiveField(0)
  strength,
  @HiveField(1)
  dexterity,
  @HiveField(2)
  constitution,
  @HiveField(3)
  intelligence,
  @HiveField(4)
  wisdom,
  @HiveField(5)
  charisma,
}
