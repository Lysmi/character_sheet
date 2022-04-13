import 'package:character_sheet/core/string_convertation.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../domain/entities/ability_entity.dart';

class SavingThrowItem extends StatelessWidget {
  final int value;

  final Abilities ability;

  final bool proficiency;

  const SavingThrowItem(
      {Key? key, required this.ability, required this.value, this.proficiency = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 23,
      child: Row(
        children: [
          Expanded(
            child: Text(
              abilityToString(ability, context),
              style: listItemTextStyle,
            ),
          ),
          proficiency
              ? Text(
                  addPlusToInt(value),
                  style: listItemTextStyle.copyWith(color: currTheme.accentMainColor),
                )
              : Text(
                  addPlusToInt(value),
                  style: listItemTextStyle,
                ),
        ],
      ),
    );
  }
}
