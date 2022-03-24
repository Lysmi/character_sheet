import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class PassivePerception extends StatelessWidget {
  const PassivePerception({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 62,
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 4),
            alignment: Alignment.center,
            height: 28,
            child: Text(
              "Pas.\nPerception",
              style: smallTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            height: 33,
            alignment: Alignment.center,
            child: Text(
              "13",
              style: smallValueTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
