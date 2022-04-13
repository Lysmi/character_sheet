import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/domain/entities/skill_entity.dart';
import 'package:flutter/material.dart';

import '../../../../core/string_convertation.dart';
import '../../../styles/colours.dart';
import '../../../styles/text_styles.dart';

class SkillItem extends StatelessWidget {
  final SkillEntity entity;
  final int value;

  const SkillItem({Key? key, required this.entity, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: SizedBox(
        height: 30,
        child: Row(
          children: [
            Expanded(
              child: Text(
                skillToString(entity.skill, context),
                style: listItemTextStyle,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                abilityToString(entity.skillAbility, context, reduction: true),
                style: smallTitleTextStyle,
              ),
            ),
            entity.data.proficiency
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
      ),
    );
  }
}
