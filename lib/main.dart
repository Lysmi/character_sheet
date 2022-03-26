import 'package:character_sheet/styles/colours.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'screens/character_stats/character_stats_page.dart';
import 'package:device_preview/device_preview.dart';


void main() => runApp(
  DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => const MyApp(), // Wrap your app
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder, //DevicePrevieSetiing
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.dark(
          background: darkTheme.mainColor,
          primary: darkTheme.secondaryColor,
          tertiary: darkTheme.accentMainColor,
          onTertiary: darkTheme.onAccentColor,
          onPrimary: darkTheme.onMainColor,
          onSecondary: darkTheme.onMainColor,
        ),
      ),
      home: const CharacterStatsContent(),
    );
  }
}
