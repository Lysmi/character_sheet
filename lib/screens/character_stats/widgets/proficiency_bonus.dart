import 'package:character_sheet/data/models/provider/character_provider_model.dart';
import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../helpers.dart';
import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

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
                "Proficiency Bonus",
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
