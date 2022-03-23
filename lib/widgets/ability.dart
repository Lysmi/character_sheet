import 'package:character_sheet/styles/colours.dart';
import 'package:flutter/widgets.dart';

import '../models/ability_model.dart';
import '../styles/text_styles.dart';

class Ability extends StatelessWidget {
  const Ability({required this.abilityModel, Key? key}) : super(key: key);
  final AbilityModel abilityModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
          color: darkTheme.secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            abilityModel.name,
            style: smallTitle,
          ),
          Text(
            abilityModel.getModifierToString(),
            style: bodyText18,
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
              style: bodyText10,
            ),
          )
        ],
      ),
    );
  }
}
