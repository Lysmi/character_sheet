import 'package:character_sheet/core/column_element_position_enum.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/presentation/screens/character_stats/character_stats_page.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../../../styles/colours.dart';
import '../../../../../styles/global_styles.dart';

// TODO это должно расширать базовый компонент ColumnItem
class BaseCharacterItem extends StatelessWidget {
  BaseCharacterItem(
      {required this.togleState,
      this.isSingleItem = SuperelipseVerticalListItemPositionEnum.single,
      required this.image,
      required this.character,
      Key? key})
      : super(key: key) {
    if (isSingleItem == SuperelipseVerticalListItemPositionEnum.last ||
        isSingleItem == SuperelipseVerticalListItemPositionEnum.middle) {
      throw Exception('isSingleItem can be only firs or single');
    }
  }

  /// Change item border radius
  final CharacterEntity character;
  final SuperelipseVerticalListItemPositionEnum isSingleItem;
  final AssetImage image;
  final Function togleState;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Route characterStatsRoute = MaterialPageRoute(
            builder: (context) => CharacterStats(characterEntity: character));
        Navigator.push(context, characterStatsRoute);
      },
      child: Container(
        height: 46,
        decoration: BoxDecoration(
          color: currTheme.secondaryColor,
          borderRadius: isSingleItem ==
                  SuperelipseVerticalListItemPositionEnum.first
              ? const BorderRadius.vertical(
                  top: Radius.circular(10), bottom: Radius.zero)
              : isSingleItem == SuperelipseVerticalListItemPositionEnum.single
                  ? const BorderRadius.all(Radius.circular(10))
                  : throw Exception(
                      'isSingleItem cannot be ' + isSingleItem.toString()),
          boxShadow: const [cardShadow],
        ),
        child: Row(children: [
          Container(
            padding: const EdgeInsets.only(left: 29.0),
            alignment: Alignment.centerLeft,
            child: Text(
              character.name,
              style: headerTextStyle,
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => togleState(),
              child: Container(
                padding: const EdgeInsets.only(right: 13.0),
                alignment: Alignment.centerRight,
                child: Image(
                  image: image,
                  width: 28,
                  height: 28,
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
