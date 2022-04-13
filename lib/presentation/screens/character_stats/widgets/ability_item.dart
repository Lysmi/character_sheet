import 'package:character_sheet/core/string_convertation.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';

class AbilityItem extends StatelessWidget {
  const AbilityItem({Key? key, required this.ability, required this.character}) : super(key: key);
  final Abilities ability;
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
            abilityToString(ability, context, reduction: true),
            style: accentSmallTitleTextStyle,
          ),
          Text(
            addPlusToInt(character.getAbilityModifier(ability)),
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
              character.getAbilityValue(ability).toString(),
              style: smallTitleOnMainTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
