import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/presentation/screens/character_stats/character_stats_page.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class CharacterItem extends StatelessWidget {
  CharacterItem(this.character, {Key? key}) : super(key: key);

  CharacterEntity character;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Route characterStatsRoute = MaterialPageRoute(builder: (context) => CharacterStats(characterEntity: character));
        Navigator.push(context, characterStatsRoute);
      },
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
    );
  }
}
