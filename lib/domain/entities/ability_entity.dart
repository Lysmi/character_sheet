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

  int getSavingThrow(int proficiencyBonus) {
    return getModifier() + (saveProficiency ? proficiencyBonus : 0) + saveBonus;
  }
}

class AbilityEntity {
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
  })  : strength = AbilityEntity(data: strengthData, ability: Abilities.strength),
        dexterity = AbilityEntity(data: dexterityData, ability: Abilities.dexterity),
        constitution = AbilityEntity(data: constitutionData, ability: Abilities.constitution),
        intelligence = AbilityEntity(data: intelligenceData, ability: Abilities.intelligence),
        wisdom = AbilityEntity(data: wisdomData, ability: Abilities.wisdom),
        charisma = AbilityEntity(data: charismaData, ability: Abilities.charisma);

  AbilityEntity getAbilityEntity(Abilities ability)
  {
    switch (ability) {
      case Abilities.strength:
        return strength;
      case Abilities.dexterity:
        return dexterity;
      case Abilities.constitution:
        return constitution;
      case Abilities.intelligence:
        return intelligence;
      case Abilities.wisdom:
        return wisdom;
      case Abilities.charisma:
        return charisma;
    }
  }
}

enum Abilities {
  strength,
  dexterity,
  constitution,
  intelligence,
  wisdom,
  charisma,
}
