import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entities/ability_entity.dart';
import '../../../provider_models/character_provider_model.dart';
import 'ability_item.dart';

class AbilityListView extends StatelessWidget {
  const AbilityListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
      builder: (context, character, child) => SizedBox(
        height: 345,
        child: Column(
          children: [
            AbilityItem(
              ability: Abilities.strength,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityItem(
              ability: Abilities.dexterity,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityItem(
              ability: Abilities.constitution,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityItem(
              ability: Abilities.intelligence,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityItem(
              ability: Abilities.wisdom,
              character: character,
            ),
            const SizedBox(
              height: 9,
            ),
            AbilityItem(
              ability: Abilities.charisma,
              character: character,
            ),
          ],
        ),
      ),
    );
  }
}
