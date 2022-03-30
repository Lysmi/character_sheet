
import 'dart:developer';

import 'package:character_sheet/data/character_repository.dart';
import 'package:character_sheet/data/models/hive/class_model.dart';
import 'package:character_sheet/screens/character_stats/widgets/ability.dart';
import 'package:character_sheet/styles/colours.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'data/models/hive/ability_model.dart';
import 'data/models/hive/character_model.dart';
import 'data/models/hive/skill_model.dart';
import 'screens/character_stats/character_stats_page.dart';
import 'package:device_preview/device_preview.dart';

Future<void> main() async {
  await hiveInit();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      //DevicePreviewSetting
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

hiveInit() async
{
  Hive.registerAdapter(AbilityAdapter());
  Hive.registerAdapter(AbilityModelAdapter());
  Hive.registerAdapter(AlignmentGoodAdapter());
  Hive.registerAdapter(AlignmentLawAdapter());
  Hive.registerAdapter(CharacterModelAdapter());
  Hive.registerAdapter(ClassModelAdapter());
  Hive.registerAdapter(SkillAdapter());
  Hive.registerAdapter(SkillModelAdapter());
  await Hive.initFlutter();
  await Hive.openBox('characters');
}
