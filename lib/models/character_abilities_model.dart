import 'ability_model.dart';

class CharacterAbilitiesModel {
  CharacterAbilitiesModel(
      {this.strength = const AbilityModel("Str", 10),
      this.dexterity = const AbilityModel("Dex", 10),
      this.constitution = const AbilityModel("Con", 10),
      this.intelligence = const AbilityModel("Int", 10),
      this.wisdom = const AbilityModel("Wis", 10),
      this.charisma = const AbilityModel("Cha", 10)});

  late AbilityModel strength;
  late AbilityModel dexterity;
  late AbilityModel constitution;
  late AbilityModel intelligence;
  late AbilityModel wisdom;
  late AbilityModel charisma;
}
