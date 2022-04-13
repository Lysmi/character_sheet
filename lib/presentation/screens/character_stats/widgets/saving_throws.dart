import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/saving_throw_item.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SavingThrows extends StatelessWidget {
  const SavingThrows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
      builder: (context, character, child) {
        return Container(
          height: 194,
          padding: const EdgeInsets.symmetric(horizontal: 9),
          decoration: BoxDecoration(
            color: currTheme.secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: const [cardShadow],
          ),
          child: Column(
            children: [
              Text(
                AppLocalizations.of(context).savingThrowsTitle,
                style: titleTextStyle,
              ),
              Column(
                children: [
                  SavingThrowItem(
                    ability: Abilities.strength,
                    value: character.getSavingThrowValue(Abilities.strength),
                    proficiency: character.getSavingThrowProficiency(Abilities.strength),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SavingThrowItem(
                    ability: Abilities.dexterity,
                    value: character.getSavingThrowValue(Abilities.dexterity),
                    proficiency: character.getSavingThrowProficiency(Abilities.dexterity),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SavingThrowItem(
                    ability: Abilities.constitution,
                    value: character.getSavingThrowValue(Abilities.constitution),
                    proficiency: character.getSavingThrowProficiency(Abilities.constitution),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SavingThrowItem(
                    ability: Abilities.intelligence,
                    value: character.getSavingThrowValue(Abilities.intelligence),
                    proficiency: character.getSavingThrowProficiency(Abilities.intelligence),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SavingThrowItem(
                    ability: Abilities.wisdom,
                    value: character.getSavingThrowValue(Abilities.wisdom),
                    proficiency: character.getSavingThrowProficiency(Abilities.wisdom),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SavingThrowItem(
                    ability: Abilities.charisma,
                    value: character.getSavingThrowValue(Abilities.charisma),
                    proficiency: character.getSavingThrowProficiency(Abilities.charisma),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
