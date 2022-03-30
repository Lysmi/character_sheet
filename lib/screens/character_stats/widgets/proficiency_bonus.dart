import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class ProficiencyBonus extends StatelessWidget {
  const ProficiencyBonus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            "+2",
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
  }
}
