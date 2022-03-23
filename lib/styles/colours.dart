import 'package:flutter/cupertino.dart';


ColorTheme darkTheme = ColorTheme(
    accentColor: const Color(0xFFFF9801),
    accentDarkColor: const Color(0xFFDE8400),
    greenColor: const Color(0xFF27B973),
    greenDarkColor: const Color(0xFF269761),
    redColor: const Color(0xFFB92727),
    mainColor: const Color(0xFF323232),
    secondaryColor: const Color(0xFF414141),
    thirdColor: const Color(0xFF585858),
    onMainColor: const Color(0xFFF1F1F1),
    onAccentColor: const Color(0xFF323232),
);

ColorTheme currTheme = darkTheme;

class ColorTheme {
  ColorTheme({
    required this.onMainColor,
    required this.onAccentColor,
    required this.accentColor,
    required this.accentDarkColor,
    required this.greenColor,
    required this.greenDarkColor,
    required this.redColor,
    required this.mainColor,
    required this.secondaryColor,
    required this.thirdColor,
  });

  final Color mainColor;
  final Color secondaryColor;
  final Color thirdColor;
  final Color accentColor;
  final Color accentDarkColor;
  final Color greenColor;
  final Color greenDarkColor;
  final Color redColor;
  final Color onMainColor;
  final Color onAccentColor;
}
