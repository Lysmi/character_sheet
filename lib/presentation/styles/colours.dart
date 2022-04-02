import 'package:flutter/cupertino.dart';

ColorTheme darkTheme = ColorTheme(
  accentMainColor: const Color(0xFFFF9801),
  greenColor: const Color(0xFF27B973),
  greenDarkColor: const Color(0xFF269761),
  orangeColor: const Color(0xFFFF9801),
  orangeDarkColor: const Color(0xFFDE8400),
  redColor: const Color(0xFFB92727),
  mainColor: const Color(0xFF323232),
  secondaryColor: const Color(0xFF414141),
  thirdColor: const Color(0xFF585858),
  onMainColor: const Color(0xFFF1F1F1),
  onAccentColor: const Color(0xFF323232),
  titleColor: const Color(0xFFA4A4A4),
);

ColorTheme currTheme = darkTheme;

class ColorTheme {
  ColorTheme({
    required this.onMainColor,
    required this.onAccentColor,
    required this.accentMainColor,
    required this.greenColor,
    required this.greenDarkColor,
    required this.orangeColor,
    required this.orangeDarkColor,
    required this.redColor,
    required this.mainColor,
    required this.secondaryColor,
    required this.thirdColor,
    required this.titleColor,
  });

  final Color mainColor;
  final Color secondaryColor;
  final Color thirdColor;
  final Color accentMainColor;
  final Color greenColor;
  final Color greenDarkColor;
  final Color orangeColor;
  final Color orangeDarkColor;
  final Color redColor;
  final Color onMainColor;
  final Color onAccentColor;
  final Color titleColor;
}
