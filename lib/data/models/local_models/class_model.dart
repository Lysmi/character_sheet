import 'package:character_sheet/domain/entities/class_entity.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class ClassModel {
  ClassModel({
    this.name = '',
    this.subclass,
    this.lvl = 1,
    this.hitDice = 4,
  });

  int id = 0;
  final String name;
  final String? subclass;
  final int lvl;
  final int hitDice;

  ClassEntity toEntity() =>
      ClassEntity(name: name, subclass: subclass, lvl: lvl, hitDice: hitDice);

  factory ClassModel.fromEntity(ClassEntity entity) => ClassModel(
        name: entity.name,
        subclass: entity.subclass,
        lvl: entity.lvl,
        hitDice: entity.hitDice,
      );
}
