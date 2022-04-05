import 'package:character_sheet/data/models/local_models/ability_model.dart';
import 'package:character_sheet/core/helpers.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/styles/assets_images.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AbilityView extends StatelessWidget {
  const AbilityView({Key? key, required this.ability, required this.character}) : super(key: key);
  final AbilityDataEntity ability;
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
            addPlusToInt(character.abilityBonus(ability)),
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

  String _abilityName(Abilities ability) {
    switch (ability) {
      case Abilities.strength:
        return "Str";
      case Abilities.dexterity:
        return "Dex";
      case Abilities.constitution:
        return "Con";
      case Abilities.intelligence:
        return "Int";
      case Abilities.wisdom:
        return "Wis";
      case Abilities.charisma:
        return "Cha";
    }
  }
}
