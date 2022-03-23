import '../models/ability_model.dart';
import 'package:flutter/material.dart';

import 'ability.dart';

class AbilityList extends StatelessWidget {
  const AbilityList({Key? key}) : super(key: key);

  final AbilityModel _strength = const AbilityModel("Str", 13);
  final AbilityModel _dexterity = const AbilityModel("Dex", 15);
  final AbilityModel _constitution = const AbilityModel("Con", 12);
  final AbilityModel _intelligence = const AbilityModel("Int", 11);
  final AbilityModel _wisdom = const AbilityModel("Wis", 13);
  final AbilityModel _charisma = const AbilityModel("Cha", 15);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 9.0),
            child: Ability(
              abilityModel: _strength,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 9.0),
            child: Ability(
              abilityModel: _dexterity,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 9.0),
            child: Ability(
              abilityModel: _constitution,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 9.0),
            child: Ability(
              abilityModel: _intelligence,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 9.0),
            child: Ability(
              abilityModel: _wisdom,
            ),
          ),
          Ability(
            abilityModel: _charisma,
          ),
        ],
      ),
    );
  }
}
