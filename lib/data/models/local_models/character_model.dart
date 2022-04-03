import 'package:character_sheet/data/models/local_models/ability_model.dart';
import 'package:character_sheet/data/models/local_models/class_model.dart';
import 'package:character_sheet/data/models/local_models/skill_model.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class CharacterModel {
  CharacterModel({
    int id = 0,
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
    required AbilityListModel abilityList,
    required SkillListModel skillList,
  });

  int id = 0;
  String name;
  String race;
  String subrace;
  List<ClassModel> classes;
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
  ToOne<AbilityListModel> abilityList;
  ToOne<SkillListModel> skillList;

  CharacterEntity toEntity() => CharacterEntity(
        id: id,
        name: name,
        race: race,
        subrace: subrace,
        classes: classes.map((e) => e.toEntity()).toList(),
        xp: xp,
        background: background,
        alignmentLaw: alignmentLaw,
        alignmentGood: alignmentGood,
        inspiration: inspiration,
        ac: ac,
        initiativeBonus: initiativeBonus,
        speed: speed,
        deathSaveFailure: deathSaveFailure,
        deathSaveSuccess: deathSaveSuccess,
        maxHit: maxHit,
        currentHit: currentHit,
        tempHit: tempHit,
        abilityList: abilityList.target.toEntity(),
        skillList: skillList.toEntity(),
      );

  factory CharacterModel.fromEntity(CharacterEntity entity) => CharacterModel(
        id: entity.id,
        name: entity.name,
        race: entity.race,
        subrace: entity.subrace,
        classes: entity.classes.map((e) => ClassModel.fromEntity(e)).toList(),
        xp: entity.xp,
        background: entity.background,
        alignmentLaw: entity.alignmentLaw,
        alignmentGood: entity.alignmentGood,
        inspiration: entity.inspiration,
        ac: entity.ac,
        initiativeBonus: entity.initiativeBonus,
        speed: entity.speed,
        deathSaveFailure: entity.deathSaveFailure,
        deathSaveSuccess: entity.deathSaveSuccess,
        maxHit: entity.maxHit,
        currentHit: entity.currentHit,
        tempHit: entity.tempHit,
        abilityList: AbilityListModel.fromEntity(entity.abilityList),
        skillList: SkillListModel.fromEntity(entity.skillList),
      );
}

enum AlignmentLaw {
  lawful,
  neutral,
  chaotic,
}

enum AlignmentGood {
  good,
  neutral,
  evil,
}
