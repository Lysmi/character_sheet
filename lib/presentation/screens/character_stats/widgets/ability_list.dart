import 'package:character_sheet/data/models/local_models/ability_model.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import 'ability.dart';

class AbilityListView extends StatelessWidget {
  const AbilityListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
      builder:(context, character, child) => SizedBox(
        height: 345,
        child: Column(
          children: [
            AbilityView(
              ability: Ability.strength,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Ability.dexterity,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Ability.constitution,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Ability.intelligence,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Ability.wisdom,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Ability.charisma,
              character: character,
            ),
          ],
        ),
      ),
    );
  }
}
