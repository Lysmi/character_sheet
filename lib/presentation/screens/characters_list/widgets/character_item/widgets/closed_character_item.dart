import 'dart:html';

import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/presentation/screens/characters_list/widgets/character_item/widgets/base_character_item.dart';
import 'package:character_sheet/presentation/styles/assets_images.dart';
import 'package:flutter/material.dart';

class ClosedCharacterItem extends StatelessWidget {
  const ClosedCharacterItem(
      {required this.togleState, required this.character, Key? key})
      : super(key: key);
  final CharacterEntity character;
  final Function togleState;

  @override
  Widget build(BuildContext context) {
    return BaseCharacterItem(
        togleState: togleState,
        isSingleItem: SuperellipseVerticalListItemPositionEnum.single,
        image: assetArrowDown,
        character: character);
  }
}
