import 'package:character_sheet/core/string_convertation.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/screens/widgets/text_tag.dart';
import 'package:character_sheet/presentation/styles/assets_images.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'character_classes.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
      builder: (context, character, child) {
        int lvl = character.lvl;
        int xp = character.xp;
        return Wrap(
          direction: Axis.vertical,
          spacing: 8,
          runSpacing: 13,
          children: [
            Wrap(
              spacing: 8,
              children: [
                TextTag(
                  data: character.subrace,
                ),
                TextTag(
                  data: '$lvl lvl',
                ),
                TextTag(
                  data: '$xp xp',
                ),
              ],
            ),
            CharacterClasses(
              characterClasses: character.classes.toList(),
            ),
            Wrap(
              spacing: 8,
              children: [
                TextTag(
                  data: character.background,
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
                        alignmentLawToString(character.alignmentLaw),
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
                        alignmentGoodToString(character.alignmentGood),
                        style: smallTitleOnMainTextStyle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
