import 'package:character_sheet/screens/character_stats/widgets/ability_list.dart';
import 'package:character_sheet/screens/character_stats/widgets/character_photo.dart';
import 'package:character_sheet/screens/character_stats/widgets/death_save.dart';
import 'package:character_sheet/screens/character_stats/widgets/derived_stats.dart';
import 'package:character_sheet/screens/character_stats/widgets/health.dart';
import 'package:character_sheet/screens/character_stats/widgets/hit_dice.dart';
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
      body: Container(
        padding: const EdgeInsets.only(left: 18.0, right: 18.0),
        alignment: Alignment.center,
        child: SizedBox(
          width: 324,
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 8),
            children: [
              Row(
                children: const [
                  CharacterPhoto(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Wrap(
                  spacing: 8.0,
                  children: const [
                    Inspiration(),
                    ProficiencyBonus(),
                  ],
                ),
              ),
              Row(
                children: [
                  AbilityList(),
                  const SizedBox(
                    width: 24,
                  ),
                  Column(
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
                            const Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: SavingThrows(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(top: 9.0),
                child: const SkillList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
