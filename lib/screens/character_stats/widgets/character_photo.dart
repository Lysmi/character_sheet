import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/assets_images.dart';
import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class CharacterPhoto extends StatelessWidget {
  const CharacterPhoto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: currTheme.secondaryColor,
        boxShadow: const [cardShadow],
      ),
      child: const Image(
        width: 15,
        height: 15,
        image: assetSuccessTrue,
      ),
    );
  }
}
