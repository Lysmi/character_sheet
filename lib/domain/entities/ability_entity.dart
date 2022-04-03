import 'package:equatable/equatable.dart';

class AbilityDataEntity extends Equatable {
  int value;
  bool saveProficiency;
  int saveBonus;

  AbilityDataEntity({
    required this.value,
    required this.saveProficiency,
    required this.saveBonus,
  });

  int getModifier() {
    return (value - 10) ~/ 2;
  }

  String getModifierToString() {
    int modifier = (value - 10) ~/ 2;
    String modifierString = modifier.toString();
    return modifier >= 0 ? "+$modifierString" : modifierString;
  }

  @override
  List<Object?> get props => [value, saveProficiency, saveBonus];
}

class AbilityEntity extends Equatable {
  AbilityEntity({
    required this.data,
    required this.ability,
  });

  AbilityDataEntity data;
  final Abilities ability;

  @override
  List<Object?> get props => [data, ability];
}

class AbilityList extends Equatable {
  AbilityEntity strength;
  AbilityEntity dexterity;
  AbilityEntity constitution;
  AbilityEntity intelligence;
  AbilityEntity wisdom;
  AbilityEntity charisma;

  AbilityList({
    required AbilityDataEntity strengthData,
    required AbilityDataEntity dexterityData,
    required AbilityDataEntity constitutionData,
    required AbilityDataEntity intelligenceData,
    required AbilityDataEntity wisdomData,
    required AbilityDataEntity charismaData,
  })  : strength =
            AbilityEntity(data: strengthData, ability: Abilities.strength),
        dexterity =
            AbilityEntity(data: strengthData, ability: Abilities.dexterity),
        constitution =
            AbilityEntity(data: strengthData, ability: Abilities.constitution),
        intelligence =
            AbilityEntity(data: strengthData, ability: Abilities.intelligence),
        wisdom = AbilityEntity(data: strengthData, ability: Abilities.wisdom),
        charisma =
            AbilityEntity(data: strengthData, ability: Abilities.charisma);

  @override
  List<Object?> get props =>
      [strength, dexterity, constitution, intelligence, wisdom, charisma];
}

enum Abilities {
  strength,
  dexterity,
  constitution,
  intelligence,
  wisdom,
  charisma,
}
