import 'package:character_sheet/styles/colours.dart';
import 'package:flutter/material.dart';

import '../../../data/models/hive/ability_model.dart';
import '../../../data/models/provider/character_provider_model.dart';
import '../../../styles/global_styles.dart';
import '../../../styles/text_styles.dart';

class AbilityView extends StatelessWidget {
  const AbilityView({Key? key, required this.ability, required this.character}) : super(key: key);
  final Ability ability;
  final CharacterProviderModel character;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            _abilityName(ability),
            style: accentSmallTitleTextStyle,
          ),
          Text(
            _modifierToString(character.abilityBonus(ability)),
            style: smallValueTextStyle,
          ),
          Container(
            decoration: BoxDecoration(
              color: currTheme.thirdColor,
              borderRadius: const BorderRadius.all(Radius.circular(5)),
            ),
            width: 30,
            alignment: Alignment.center,
            child: Text(
              character.abilityValue(ability).toString(),
              style: smallTitleOnMainTextStyle,
            ),
          )
        ],
      ),
    );
  }

  String _abilityName(Ability ability) {
    switch (ability) {
      case Ability.strength:
        return "Str";
      case Ability.dexterity:
        return "Dex";
      case Ability.constitution:
        return "Con";
      case Ability.intelligence:
        return "Int";
      case Ability.wisdom:
        return "Wis";
      case Ability.charisma:
        return "Cha";
    }
  }

  String _modifierToString(int modifier) => modifier > 0 ? "+$modifier" : "$modifier";
}
