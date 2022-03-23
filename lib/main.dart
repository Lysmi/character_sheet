import 'package:character_sheet/styles/colours.dart';
import 'package:flutter/material.dart';
import 'screens/character_stats/content.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          background: darkTheme.mainColor,
          primary: darkTheme.secondaryColor,
          tertiary: darkTheme.accentColor,
          onTertiary: darkTheme.onAccentColor,
          onPrimary: darkTheme.onMainColor,
          onSecondary: darkTheme.onMainColor,
        ),
      ),
      home: const CharacterStatsContent(),
    );
  }
}
