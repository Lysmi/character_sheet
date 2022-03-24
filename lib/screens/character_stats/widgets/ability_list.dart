import 'package:character_sheet/models/character_abilities_model.dart';

import '../../../models/ability_model.dart';
import 'package:flutter/material.dart';

import 'ability.dart';

class AbilityList extends StatelessWidget {
  AbilityList({Key? key}) : super(key: key);

  final CharacterAbilitiesModel _abilitiesModel =
  CharacterAbilitiesModel();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 345,
      child: Column(
        children: [
          Ability(
            abilityModel: _abilitiesModel.strength,
          ),
          const SizedBox(
            height: 9,
          ),
          Ability(
            abilityModel: _abilitiesModel.dexterity,
          ),
          const SizedBox(
            height: 9,
          ),
          Ability(
            abilityModel: _abilitiesModel.constitution,
          ),
          const SizedBox(
            height: 9,
          ),
          Ability(
            abilityModel: _abilitiesModel.intelligence,
          ),
          const SizedBox(
            height: 9,
          ),
          Ability(
            abilityModel: _abilitiesModel.wisdom,
          ),
          const SizedBox(
            height: 9,
          ),
          Ability(
            abilityModel: _abilitiesModel.charisma,
          ),
        ],
      ),
    );
  }
}
