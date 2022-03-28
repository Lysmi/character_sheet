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
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              boxShadow: const [cardShadow],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: removeHealthPressed,
              icon: const Icon(Icons.remove),
              iconSize: 10,
              color: currTheme.onMainColor,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: CharProgressBar(
                maxValue: 252,
                currentValue: 243,
                tempValue: 0,
                valueColor: currTheme.greenColor,
                backgroundColor: currTheme.secondaryColor,
                tempValueColor: currTheme.greenDarkColor,
              ),
            ),
          ),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              boxShadow: const [cardShadow],
              shape: BoxShape.circle,
            ),
            child: IconButton(
                onPressed: addHealthPressed,
                icon: const Icon(Icons.add),
                color: currTheme.onMainColor,
                iconSize: 10),
          ),
        ],
      ),
    );
  }
}

removeHealthPressed() {}

addHealthPressed() {}
