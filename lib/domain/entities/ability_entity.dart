import 'package:equatable/equatable.dart';

class AbilityEntity extends Equatable{
  int value;
  bool saveProficiency;
  int saveBonus;

  AbilityEntity({
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

class AbilityList extends Equatable {
  AbilityEntity strength;
  AbilityEntity dexterity;
  AbilityEntity constitution;
  AbilityEntity intelligence;
  AbilityEntity wisdom;
  AbilityEntity charisma;

  AbilityList({
    required this.strength,
    required this.dexterity,
    required this.constitution,
    required this.intelligence,
    required this.wisdom,
    required this.charisma,
  });

  @override
  List<Object?> get props => [strength, dexterity, constitution, intelligence, wisdom, charisma];
}
