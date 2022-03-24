import 'package:character_sheet/styles/colours.dart';
import 'package:character_sheet/styles/global_styles.dart';
import 'package:flutter/material.dart';

import '../../../widgets/char_progress_bar.dart';

class Health extends StatelessWidget {
  const Health({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 9),
      height: 25,
      child: Wrap(
        spacing: 4,
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              boxShadow: const [cardShadow],
              shape: BoxShape.circle,
            ),
            child: const IconButton(
              onPressed: removeHealthPressed,
              icon: Icon(
                Icons.remove,
              ),
              iconSize: 10,
            ),
          ),
          CharProgressBar(
            maxValue: 9,
            currentValue: 22,
            tempValue: 5,
            valueColor: currTheme.greenColor,
            backgroundColor: currTheme.secondaryColor,
            tempValueColor: currTheme.greenDarkColor,
          ),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              boxShadow: const [cardShadow],
              shape: BoxShape.circle,
            ),
            child: const IconButton(
                onPressed: addHealthPressed,
                icon: Icon(Icons.add),
                iconSize: 10),
          ),
        ],
      ),
    );
  }
}

removeHealthPressed() {}

addHealthPressed() {}
