import 'package:character_sheet/presentation/screens/character_stats/widgets/skill_item.dart';
import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/entities/skill_entity.dart';

class SkillListView extends StatelessWidget {
  const SkillListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
      builder: (context, character, child) => Container(
        decoration: BoxDecoration(
          color: currTheme.secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          boxShadow: const [cardShadow],
        ),
        constraints: const BoxConstraints(maxWidth: 500),
        child: Padding(
          padding: const EdgeInsets.all(3.0),
          child: Row(
            children: [
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    SkillItem(
                      entity: character.getSkillEntity(Skills.acrobatics),
                      value: character.getSkillValue(Skills.acrobatics),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.animalHandling),
                      value: character.getSkillValue(Skills.animalHandling),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.arcana),
                      value: character.getSkillValue(Skills.arcana),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.athletics),
                      value: character.getSkillValue(Skills.athletics),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.deception),
                      value: character.getSkillValue(Skills.deception),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.history),
                      value: character.getSkillValue(Skills.history),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.insight),
                      value: character.getSkillValue(Skills.insight),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.intimidation),
                      value: character.getSkillValue(Skills.intimidation),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.investigation),
                      value: character.getSkillValue(Skills.investigation),
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Column(
                  children: [
                    SkillItem(
                      entity: character.getSkillEntity(Skills.medicine),
                      value: character.getSkillValue(Skills.medicine),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.nature),
                      value: character.getSkillValue(Skills.nature),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.perception),
                      value: character.getSkillValue(Skills.perception),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.performance),
                      value: character.getSkillValue(Skills.performance),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.persuasion),
                      value: character.getSkillValue(Skills.persuasion),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.religion),
                      value: character.getSkillValue(Skills.religion),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.sleightOfHand),
                      value: character.getSkillValue(Skills.sleightOfHand),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.stealth),
                      value: character.getSkillValue(Skills.stealth),
                    ),
                    SkillItem(
                      entity: character.getSkillEntity(Skills.survival),
                      value: character.getSkillValue(Skills.survival),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
