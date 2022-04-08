import 'package:equatable/equatable.dart';

class AbilityDataEntity {
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
}

class AbilityEntity{
  AbilityEntity({
    required this.data,
    required this.ability,
  });

  AbilityDataEntity data;
  final Abilities ability;

}

class CharactersAbilities {
  AbilityEntity strength;
  AbilityEntity dexterity;
  AbilityEntity constitution;
  AbilityEntity intelligence;
  AbilityEntity wisdom;
  AbilityEntity charisma;

  CharactersAbilities({
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
}

enum Abilities {
  strength,
  dexterity,
  constitution,
  intelligence,
  wisdom,
  charisma,
}
