import 'dart:developer';

import 'package:character_sheet/data/models/local_models/class_model.dart';
import 'package:character_sheet/data/repositories/characters_repository_implement.dart';
import 'package:character_sheet/domain/usecases/characters_write.dart';
import 'package:character_sheet/presentation/screens/character_stats/character_stats_page.dart';
import 'package:character_sheet/presentation/screens/characters_list/character_list_page.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';
import 'data/models/local_models/ability_model.dart';
import 'data/models/local_models/character_model.dart';
import 'data/models/local_models/skill_model.dart';
import 'domain/entities/ability_entity.dart';
import 'domain/entities/character_entity.dart';
import 'domain/entities/class_entity.dart';
import 'domain/entities/skill_entity.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Future<void> main() async {
  await hiveInit();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const CharacterSheetApp(), // Wrap your app
    ),
  );
  //runApp(const CharacterSheetApp());
}

class CharacterSheetApp extends StatelessWidget {
  const CharacterSheetApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
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
      home: const CharactersList(),
    );
  }
}

hiveInit() async {
  Hive.registerAdapter(AbilityModelAdapter());
  Hive.registerAdapter(CharactersAbilitiesModelAdapter());
  Hive.registerAdapter(AlignmentGoodAdapter());
  Hive.registerAdapter(AlignmentLawAdapter());
  Hive.registerAdapter(CharacterModelAdapter());
  Hive.registerAdapter(ClassModelAdapter());
  Hive.registerAdapter(SkillModelAdapter());
  Hive.registerAdapter(CharactersSkillsModelAdapter());
  await Hive.initFlutter();
  await Hive.openBox('characters');
}
