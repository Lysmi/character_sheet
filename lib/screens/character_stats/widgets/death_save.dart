import 'package:character_sheet/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../styles/assets_images.dart';
import '../../../styles/colours.dart';
import '../../../styles/global_styles.dart';

class DeathSave extends StatelessWidget {
  const DeathSave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      width: 80,
      height: 123,
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      child: Column(
        children: [
          Container(
            height: 24,
            alignment: Alignment.center,
            child: Text(
              "Death Save",
              style: smallTitleTextStyle,
            ),
          ),
          Wrap(
            direction: Axis.horizontal,
            spacing: 10,
            children: [
              Wrap(
                spacing: 4,
                direction: Axis.vertical,
                children: const [
                  Image(
                    image: assetSuccessTrue,
                    width: 28,
                    height: 28,
                  ),
                  Image(
                    image: assetSuccessFalse,
                    width: 28,
                    height: 28,
                  ),
                  Image(
                    image: assetSuccessFalse,
                    width: 28,
                    height: 28,
                  ),
                ],
              ),
              Wrap(
                spacing: 4,
                direction: Axis.vertical,
                children: const [
                  Image(
                    image: assetFailureTrue,
                    width: 28,
                    height: 28,
                  ),
                  Image(
                    image: assetFailureTrue,
                    width: 28,
                    height: 28,
                  ),
                  Image(
                    image: assetFailureFalse,
                    width: 28,
                    height: 28,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
