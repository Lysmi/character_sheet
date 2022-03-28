import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class SavingThrows extends StatelessWidget {
  const SavingThrows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 194,
      padding: const EdgeInsets.symmetric(horizontal: 9),
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      child: Column(
        children: [
          Text(
            "Saving Throws",
            style: titleTextStyle,
          ),
          Row(

          )
        ],
      ),
    );
  }
}
