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
    return Wrap(
      direction: Axis.vertical,
      spacing: 9,
      children: [
        Ability(
          abilityModel: _abilitiesModel.strength,
        ),
        Ability(
          abilityModel: _abilitiesModel.dexterity,
        ),
        Ability(
          abilityModel: _abilitiesModel.constitution,
        ),
        Ability(
          abilityModel: _abilitiesModel.intelligence,
        ),
        Ability(
          abilityModel: _abilitiesModel.wisdom,
        ),
        Ability(
          abilityModel: _abilitiesModel.charisma,
        ),
      ],
    );
  }
}
