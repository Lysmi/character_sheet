import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/ability_list.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/character_photo.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/death_save.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/derived_stats.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/health.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/hit_dice.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/info.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/inspiration.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/passive_perception.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/proficiency_bonus.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/saving_throws.dart';
import 'package:character_sheet/presentation/screens/character_stats/widgets/skill_list.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../core/constants.dart';
import '../../provider_models/character_provider_model.dart';

class CharacterStats extends StatelessWidget {
  const CharacterStats({
    Key? key,
    required this.characterEntity,
  }) : super(key: key);
  final CharacterEntity characterEntity;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CharacterProviderModel(characterEntity),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("William"),
          backgroundColor: currTheme.mainColor,
          toolbarHeight: toolbarHeight,
        ),
        body: Center(
          child: Container(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            constraints: const BoxConstraints(maxWidth: 500),
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 13,
                        children: const [
                          CharacterPhoto(),
                          Info(),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
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
                            const AbilityListView(),
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
                        const SkillListView(),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
