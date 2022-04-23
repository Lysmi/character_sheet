
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';


class CharProgressBar extends StatelessWidget {
  const CharProgressBar(
      {required this.backgroundColor,
      required this.valueColor,
      required this.tempValueColor,
      this.maxValue = 5,
      this.currentValue = 2,
      this.tempValue = 4,
      Key? key})
      : super(key: key);
  final Color backgroundColor;
  final Color valueColor;
  final Color tempValueColor;
  final int maxValue;
  final int currentValue;
  final int tempValue;

  @override
  Widget build(BuildContext context) {
    int _value = (currentValue > maxValue) ? maxValue : currentValue;
    return Container(
      alignment: Alignment.center,
      child: Container(
        height: 17,
        decoration: const BoxDecoration(
          boxShadow: [cardShadow],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Row(
                children: [
                  Expanded(
                    flex: (_value / (maxValue + tempValue) * 1000).toInt(),
                    child: Container(
                      color: valueColor,
                    ),
                  ),
                  Expanded(
                    flex: (tempValue / (maxValue + tempValue) * 1000).toInt(),
                    child: Container(
                      color: tempValueColor,
                    ),
                  ),
                  Expanded(
                    flex: ((maxValue - _value) / (maxValue + tempValue) * 1000).toInt(),
                    child: Container(
                      color: backgroundColor,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              "$currentValue / $maxValue" + (tempValue > 0 ? " + $tempValue" : ""),
              textAlign: TextAlign.center,
              style: listItemTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
