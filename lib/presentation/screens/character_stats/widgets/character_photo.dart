import 'package:character_sheet/presentation/styles/assets_images.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:flutter/material.dart';

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
