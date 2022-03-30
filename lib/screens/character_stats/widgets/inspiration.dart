import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/assets_images.dart';
import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class Inspiration extends StatelessWidget {
  const Inspiration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 107,
      height: 20,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      child: Row(
        children: [
          const Image(
            width: 15,
            height: 15,
            image: assetSuccessTrue,
          ),
          const SizedBox(width: 8),
          Text(
            "Inspiration",
            style: smallTitleOnMainTextStyle,
          ),
        ],
      ),
    );
  }
}


