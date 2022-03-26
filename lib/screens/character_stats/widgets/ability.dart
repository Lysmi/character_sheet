import 'package:character_sheet/styles/colours.dart';
import 'package:flutter/material.dart';

import '../../../models/ability_model.dart';
import '../../../styles/global_styles.dart';
import '../../../styles/text_styles.dart';

class Ability extends StatelessWidget {
  const Ability({required this.abilityModel, Key? key}) : super(key: key);
  final AbilityModel abilityModel;

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
            abilityModel.name,
            style: accentSmallTitleTextStyle,
          ),
          Text(
            abilityModel.getModifierToString(),
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
              abilityModel.value.toString(),
              style: smallTitleOnMainTextStyle,
            ),
          )
        ],
      ),
    );
  }
}
