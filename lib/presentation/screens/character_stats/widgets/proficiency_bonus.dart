import 'package:character_sheet/core/string_convertation.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class ProficiencyBonus extends StatelessWidget {
  const ProficiencyBonus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
      builder: (context, character, child) {
        return Container(
          width: 135,
          height: 20,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: currTheme.secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: const [cardShadow],
          ),
          child: Wrap(
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            runAlignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8,
            children: [
              Text(
                addPlusToInt(character.proficiencyBonus),
                textAlign: TextAlign.center,
                style: titleOnMainTextStyle,
              ),
              Text(
                AppLocalizations.of(context).proficiency_bonus,
                textAlign: TextAlign.center,
                style: smallTitleOnMainTextStyle,
              ),
            ],
          ),
        );
      },
    );
  }
}
