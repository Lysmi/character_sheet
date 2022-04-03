import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:objectbox/objectbox.dart';

@Entity()
class AbilityDataModel {
  AbilityDataModel({
    this.value = 10,
    this.saveProficiency = false,
    this.saveBonus = 0,
  });

  int id = 0;
  final int value;
  final bool saveProficiency;
  final int saveBonus;

  AbilityDataEntity toEntity() => AbilityDataEntity(
      value: value, saveProficiency: saveProficiency, saveBonus: saveBonus);

  factory AbilityDataModel.fromEntity(AbilityDataEntity entity) =>
      AbilityDataModel(
        value: entity.value,
        saveProficiency: entity.saveProficiency,
        saveBonus: entity.saveBonus,
      );
}

@Entity()
class AbilityModel {
  AbilityModel({
    required this.data,
    required this.ability,
  });

  int id = 0;
  AbilityDataModel data;
  Abilities ability;

  AbilityEntity toEntity() =>
      AbilityEntity(data: data.toEntity(), ability: ability);

  factory AbilityModel.fromEntity(AbilityEntity entity) => AbilityModel(
      data: AbilityDataModel.fromEntity(entity.data), ability: entity.ability);
}

@Entity()
class AbilityListModel {
  int id = 0;
  AbilityModel strength;
  AbilityModel dexterity;
  AbilityModel constitution;
  AbilityModel intelligence;
  AbilityModel wisdom;
  AbilityModel charisma;

  AbilityListModel({
    required AbilityDataModel strengthData,
    required AbilityDataModel dexterityData,
    required AbilityDataModel constitutionData,
    required AbilityDataModel intelligenceData,
    required AbilityDataModel wisdomData,
    required AbilityDataModel charismaData,
  })  : strength =
            AbilityModel(data: strengthData, ability: Abilities.strength),
        dexterity =
            AbilityModel(data: strengthData, ability: Abilities.dexterity),
        constitution =
            AbilityModel(data: strengthData, ability: Abilities.constitution),
        intelligence =
            AbilityModel(data: strengthData, ability: Abilities.intelligence),
        wisdom = AbilityModel(data: strengthData, ability: Abilities.wisdom),
        charisma =
            AbilityModel(data: strengthData, ability: Abilities.charisma);

  AbilityList toEntity() => AbilityList(
      strengthData: strength.data.toEntity(),
      dexterityData: dexterity.data.toEntity(),
      constitutionData: constitution.data.toEntity(),
      intelligenceData: intelligence.data.toEntity(),
      wisdomData: wisdom.data.toEntity(),
      charismaData: charisma.data.toEntity());

  factory AbilityListModel.fromEntity(AbilityList entity) => AbilityListModel(
      strengthData: AbilityDataModel.fromEntity(entity.strength.data),
      dexterityData: AbilityDataModel.fromEntity(entity.dexterity.data),
      constitutionData: AbilityDataModel.fromEntity(entity.constitution.data),
      intelligenceData: AbilityDataModel.fromEntity(entity.intelligence.data),
      wisdomData: AbilityDataModel.fromEntity(entity.wisdom.data),
      charismaData: AbilityDataModel.fromEntity(entity.charisma.data));
}
