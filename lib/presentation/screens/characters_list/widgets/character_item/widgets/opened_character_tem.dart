import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/presentation/screens/characters_list/widgets/character_item/widgets/base_character_item.dart';
import 'package:character_sheet/presentation/styles/assets_images.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';

class OpenedCharacterItem extends StatelessWidget {
  const OpenedCharacterItem(
      {required this.togleState, required this.character, Key? key})
      : super(key: key);
  final CharacterEntity character;
  final Function togleState;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BaseCharacterItem(
            togleState: togleState,
            isSingleItem: SuperellipseVerticalListItemPositionEnum.first,
            image: assetArrowUp,
            character: character),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 46,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: const [cardShadow],
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 29.0),
              alignment: Alignment.centerLeft,
              child: Text(
                character.name,
                style: headerTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
