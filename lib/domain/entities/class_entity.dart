import 'package:equatable/equatable.dart';

class ClassEntity extends Equatable {
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

  @override
  List<Object?> get props => [name, subclass, lvl, hitDice];
}
