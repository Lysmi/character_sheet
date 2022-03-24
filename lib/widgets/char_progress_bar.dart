import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../styles/colours.dart';
import '../styles/global_styles.dart';

class CharProgressBar extends StatelessWidget {
  CharProgressBar(
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
      height: 25,
      alignment: Alignment.center,
      child: Container(
        height: 15,
        decoration: const BoxDecoration(
          boxShadow: [cardShadow],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: FittedBox(
            fit: BoxFit.fitWidth,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      width: 192,
                      height: 15,
                      color: backgroundColor,
                    ),
                    Row(
                      children: [
                        Container(
                          width: _value / (maxValue + tempValue) * 192,
                          height: 15,
                          color: valueColor,
                        ),
                        Container(
                          width: tempValue / (maxValue + tempValue) * 192,
                          height: 15,
                          color: tempValueColor,
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "$currentValue / $maxValue" +
                      (tempValue > 0 ? " + $tempValue" : ""),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
