import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:hive/hive.dart';

part 'ability_model.g.dart';

@HiveType(typeId: 0)
class AbilityModel {
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

  AbilityDataEntity toEntity() => AbilityDataEntity(
      value: value, saveProficiency: saveProficiency, saveBonus: saveBonus);

  factory AbilityModel.fromEntity(AbilityDataEntity entity) =>
      AbilityModel(
        value: entity.value,
        saveProficiency: entity.saveProficiency,
        saveBonus: entity.saveBonus,
      );
}

@HiveType(typeId: 1)
class CharactersAbilitiesModel {
  @HiveField(0)
  AbilityModel strength;
  @HiveField(1)
  AbilityModel dexterity;
  @HiveField(2)
  AbilityModel constitution;
  @HiveField(3)
  AbilityModel intelligence;
  @HiveField(4)
  AbilityModel wisdom;
  @HiveField(5)
  AbilityModel charisma;

  CharactersAbilitiesModel({
    required this.strength,
    required this.dexterity,
    required this.constitution,
    required this.intelligence,
    required this.wisdom,
    required this.charisma,
  });

  CharactersAbilities toEntity() => CharactersAbilities(
      strengthData: strength.toEntity(),
      dexterityData: dexterity.toEntity(),
      constitutionData: constitution.toEntity(),
      intelligenceData: intelligence.toEntity(),
      wisdomData: wisdom.toEntity(),
      charismaData: charisma.toEntity());

  factory CharactersAbilitiesModel.fromEntity(CharactersAbilities entity) => CharactersAbilitiesModel(
      strength: AbilityModel.fromEntity(entity.strength.data),
      dexterity: AbilityModel.fromEntity(entity.dexterity.data),
      constitution: AbilityModel.fromEntity(entity.constitution.data),
      intelligence: AbilityModel.fromEntity(entity.intelligence.data),
      wisdom: AbilityModel.fromEntity(entity.wisdom.data),
      charisma: AbilityModel.fromEntity(entity.charisma.data));
}
