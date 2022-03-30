import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/colours.dart';
import '../../../widgets/text_tag.dart';
import 'character_classes.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.vertical,
      spacing: 8,
      runSpacing: 13,
      children: [
        Wrap(
          spacing: 8,
          children: const [
            TextTag(
              data: 'High Elf',
            ),
            TextTag(
              data: '5 lvl',
            ),
            TextTag(
              data: '1204 xp',
            ),
          ],
        ),
        CharacterClasses(
          characterClass: 'Barbarian',
          classLvl: "2",
          archetype: "Totem Warrior",
        ),
        Wrap(
          spacing: 8,
          children: [
            const TextTag(
              data: 'Criminal',
            ),
            Wrap(
              spacing: 3,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                      color: currTheme.secondaryColor,
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(10), right: Radius.circular(4))),
                  child: Text(
                    'Neutral',
                    style: smallTitleOnMainTextStyle,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                      color: currTheme.secondaryColor,
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.circular(4), right: Radius.circular(10))),
                  child: Text(
                    'Neutral',
                    style: smallTitleOnMainTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
