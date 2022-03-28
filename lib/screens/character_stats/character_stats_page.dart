import 'package:character_sheet/screens/character_stats/widgets/ability_list.dart';
import 'package:character_sheet/screens/character_stats/widgets/character_photo.dart';
import 'package:character_sheet/screens/character_stats/widgets/death_save.dart';
import 'package:character_sheet/screens/character_stats/widgets/derived_stats.dart';
import 'package:character_sheet/screens/character_stats/widgets/health.dart';
import 'package:character_sheet/screens/character_stats/widgets/hit_dice.dart';
import 'package:character_sheet/screens/character_stats/widgets/info.dart';
import 'package:character_sheet/screens/character_stats/widgets/inspiration.dart';
import 'package:character_sheet/screens/character_stats/widgets/passive_perception.dart';
import 'package:character_sheet/screens/character_stats/widgets/proficiency_bonus.dart';
import 'package:character_sheet/screens/character_stats/widgets/saving_throws.dart';
import 'package:character_sheet/screens/character_stats/widgets/skill_list.dart';
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
      body: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 18.0, right: 18.0),
          constraints: const BoxConstraints(maxWidth: 500),
          child: ListView(padding: const EdgeInsets.symmetric(vertical: 8), children: [
            Column(
              children: [
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 13,
                  children: const [
                    CharacterPhoto(),
                    Info(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Wrap(
                    spacing: 8,
                    children: const [
                      Inspiration(),
                      ProficiencyBonus(),
                    ],
                  ),
                ),
                Wrap(
                  spacing: 9,
                  runSpacing: 9,
                  children: [
                    Row(
                      children: [
                        AbilityList(),
                        const SizedBox(
                          width: 24,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              const DerivedStats(),
                              const Health(),
                              const HitDice(),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Wrap(
                                      spacing: 9,
                                      direction: Axis.vertical,
                                      children: const [
                                        DeathSave(),
                                        PassivePerception(),
                                      ],
                                    ),
                                    const Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.only(left: 8.0),
                                        child: SavingThrows(),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SkillList(),
                  ],
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
