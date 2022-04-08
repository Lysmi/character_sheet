import 'package:equatable/equatable.dart';

class ClassEntity {
  String name;
  String? subclass;
  int lvl;
  int hitDice;

  ClassEntity({
    required this.name,
    required this.subclass,
    required this.lvl,
    required this.hitDice,
  });
}
