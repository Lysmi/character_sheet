import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:flutter/material.dart';

import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class CharacterItem extends StatelessWidget {
  CharacterItem(this.character, {Key? key}) : super(key: key);

  CharacterEntity character;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 100,
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      child: Text(character.name),
    );
  }
}
