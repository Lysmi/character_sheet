import 'package:character_sheet/domain/entities/skill_entity.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class PassivePerception extends StatelessWidget {
  const PassivePerception({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 62,
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 4),
            alignment: Alignment.center,
            height: 32,
            child: Text(
              AppLocalizations.of(context).passivePerceptionTitle,
              style: smallTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Consumer<CharacterProviderModel>(
            builder: (context, character, child) {
              return Container(
                height: 30,
                alignment: Alignment.center,
                child: Text(
                  (character.getSkillValue(Skills.perception) + 10).toString(),
                  style: smallValueTextStyle,
                  textAlign: TextAlign.center,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
