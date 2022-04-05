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

class CharactersAbilities extends Equatable {
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

  int abilityModifier(Abilities ability) {
    switch (ability) {
      case Abilities.strength:
        return strength.data.getModifier();
      case Abilities.dexterity:
        return dexterity.data.getModifier();
      case Abilities.constitution:
        return constitution.data.getModifier();
      case Abilities.intelligence:
        return intelligence.data.getModifier();
      case Abilities.wisdom:
        return wisdom.data.getModifier();
      case Abilities.charisma:
        return charisma.data.getModifier();
    }
  }

  int abilityValue(Abilities ability) {
    switch (ability) {
      case Abilities.strength:
        return strength.data.value;
      case Abilities.dexterity:
        return dexterity.data.value;
      case Abilities.constitution:
        return constitution.data.value;
      case Abilities.intelligence:
        return intelligence.data.value;
      case Abilities.wisdom:
        return wisdom.data.value;
      case Abilities.charisma:
        return charisma.data.value;
    }
  }

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
