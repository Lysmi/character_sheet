import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/domain/entities/skill_entity.dart';
import 'package:equatable/equatable.dart';

import 'ability_entity.dart';
import 'class_entity.dart';

class CharacterEntity extends Equatable {
  int key;
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
  CharactersAbilities abilities;
  CharactersSkills skills;

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
    required this.abilities,
    required this.skills,
    this.key = 0,
  });

  get lvl {
    int newLvl = 0;
    for (var element in classes) {
      newLvl += element.lvl;
    }
    return newLvl;
  }

  int abilityBonus(Ability ability) => ((_character.abilities[ability]?.value ?? 10) - 10) ~/ 2;

  int abilityValue(Ability ability) => _character.abilities[ability]?.value ?? 10;

  int skillValue(Skill skill) =>
      _character.skills[skill]?.bonus ??
          0 + abilityBonus(skillFromAbility[skill] ?? Ability.strength);

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
        abilities,
        skills,
      ];
}
