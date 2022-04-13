import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entities/ability_entity.dart';
import 'ability.dart';

class AbilityListView extends StatelessWidget {
  const AbilityListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
      builder: (context, character, child) => SizedBox(
        height: 345,
        child: Column(
          children: [
            AbilityView(
              ability: Abilities.strength,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Abilities.dexterity,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Abilities.constitution,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Abilities.intelligence,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Abilities.wisdom,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityView(
              ability: Abilities.charisma,
              character: character,
            ),
          ],
        ),
      ),
    );
  }
}
