import 'package:character_sheet/data/models/hive/ability_model.dart';
import 'package:hive/hive.dart';

part 'class_model.g.dart';


@HiveType(typeId: 4)
class ClassModel extends HiveObject {
  ClassModel(
      {this.name = '',
        this.subclass,
        this.lvl = 1,
        this.hitDice = 4});

  @HiveField(0)
  final String name;

  @HiveField(1)
  final String? subclass;

  @HiveField(2)
  final int lvl;

  @HiveField(3)
  final int hitDice;
}