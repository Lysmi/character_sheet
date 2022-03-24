import 'package:character_sheet/screens/character_stats/widgets/ability_list.dart';
import 'package:character_sheet/screens/character_stats/widgets/derived_stats.dart';
import 'package:character_sheet/screens/character_stats/widgets/health.dart';
import 'package:flutter/material.dart';

import '../../styles/colours.dart';

class CharacterStatsContent extends StatelessWidget {
  const CharacterStatsContent({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("William"),
        backgroundColor: currTheme.mainColor,
        toolbarHeight: 42,
      ),
      body: Container(
        margin: const EdgeInsets.all(18),
        child: Row(
          children: [
            AbilityList(),
            const SizedBox(
              width: 24,
            ),
            Column(
              children: const [
                DerivedStats(),
                Health(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
