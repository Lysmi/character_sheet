import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/assets_images.dart';
import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class CharacterClasses extends StatelessWidget {
  final String characterClass;
  final String archetype;
  final String classLvl;
  var _haveArchetype = false;

  CharacterClasses({
    Key? key,
    required this.characterClass,
    required this.classLvl,
    this.archetype = '',
  }) : super(key: key);

  get onChanged => null;

  @override
  Widget build(BuildContext context) {
    if (archetype != '') {
      _haveArchetype = true;
    }
    return Wrap(
      spacing: 3,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(4))),
          child: Text(
            characterClass,
            style: smallTitleOnMainTextStyle,
          ),
        ),
        if (_haveArchetype)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
                color: currTheme.secondaryColor, borderRadius: BorderRadius.circular(4)),
            child: Text(
              archetype,
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
            classLvl,
            style: smallTitleOnMainTextStyle,
          ),
        ),
      ],
    );
  }
}
