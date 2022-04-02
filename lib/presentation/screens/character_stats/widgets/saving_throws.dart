import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';

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
          Row()
        ],
      ),
    );
  }
}
