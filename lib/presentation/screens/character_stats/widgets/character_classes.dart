import 'package:character_sheet/data/models/local_models/class_model.dart';
import 'package:character_sheet/domain/entities/class_entity.dart';
import 'package:character_sheet/presentation/styles/assets_images.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';



class CharacterClasses extends StatefulWidget {
  const CharacterClasses({Key? key, required this.characterClasses}) : super(key: key);
  final List<ClassEntity> characterClasses;

  @override
  State<CharacterClasses> createState() => _CharacterClassesState(characterClasses);
}

class _CharacterClassesState extends State<CharacterClasses> {
  int _currIndex = 0;
  final List<ClassEntity> characterClasses;

  _CharacterClassesState(this.characterClasses);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 3,
      children: [
        if (_currIndex > 0)
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              boxShadow: const [cardShadow],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              splashRadius: 20,
              padding: EdgeInsets.zero,
              onPressed: () => setState(() {
                _currIndex--;
              }),
              icon: const Icon(Icons.arrow_back),
              iconSize: 15,
              color: currTheme.onMainColor,
            ),
          ),
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(10), right: Radius.circular(4))),
          child: Text(
            characterClasses[_currIndex].name,
            style: smallTitleOnMainTextStyle,
          ),
        ),
        if (characterClasses[_currIndex].subclass != null)
          Container(
            height: 20,
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
                color: currTheme.secondaryColor, borderRadius: BorderRadius.circular(4)),
            child: Text(
              characterClasses[_currIndex].subclass ?? "",
              style: smallTitleOnMainTextStyle,
            ),
          ),
        Container(
          height: 20,
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
          decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              borderRadius: const BorderRadius.horizontal(
                  left: Radius.circular(4), right: Radius.circular(10))),
          child: Text(
            characterClasses[_currIndex].lvl.toString(),
            style: smallTitleOnMainTextStyle,
          ),
        ),
        if (characterClasses.length > 1 && _currIndex < characterClasses.length-1)
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              boxShadow: const [cardShadow],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              splashRadius: 20,
              padding: EdgeInsets.zero,
              onPressed: () => setState(() {
                _currIndex++;
              }),
              icon: const Icon(Icons.arrow_forward),
              iconSize: 15,
              color: currTheme.onMainColor,
            ),
          ),
      ],
    );
  }
}
