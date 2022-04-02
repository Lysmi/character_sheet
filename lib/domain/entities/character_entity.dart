import 'package:character_sheet/data/models/hive/character_model.dart';
import 'package:equatable/equatable.dart';

import 'ability_entity.dart';
import 'class_entity.dart';

class CharacterEntity extends Equatable {
  String name;
  String race;
  String subrace;
  List<ClassEntity> classes;
  int xp;
  String background;
  AlignmentLaw alignmentLaw;
  AlignmentGood alignmentGood;
  bool inspiration;
  int ac;
  int initiativeBonus;
  int speed;
  List<bool> deathSaveFailure;
  List<bool> deathSaveSuccess;
  int maxHit;
  int currentHit;
  int tempHit;
  AbilityList abilityList;
  AbilityList skillList;

  CharacterEntity({
    required this.name,
    required this.race,
    required this.subrace,
    required this.classes,
    required this.xp,
    required this.background,
    required this.alignmentLaw,
    required this.alignmentGood,
    required this.inspiration,
    required this.ac,
    required this.initiativeBonus,
    required this.speed,
    required this.deathSaveFailure,
    required this.deathSaveSuccess,
    required this.maxHit,
    required this.currentHit,
    required this.tempHit,
    required this.abilityList,
    required this.skillList,
  });

  @override
  List<Object?> get props => [
        name,
        race,
        subrace,
        classes,
        xp,
        background,
        alignmentLaw,
        alignmentGood,
        inspiration,
        ac,
        initiativeBonus,
        speed,
        deathSaveSuccess,
        deathSaveFailure,
        maxHit,
        currentHit,
        tempHit,
        abilityList,
        skillList,
      ];
}
