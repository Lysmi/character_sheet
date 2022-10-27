import 'package:character_sheet/core/string_convertation.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../../provider_models/character_provider_model.dart';

class AbilityItem extends StatefulWidget {
  AbilityItem({Key? key, required this.ability, required this.character})
      : super(key: key);
  final Abilities ability;
  final CharacterProviderModel character;

  @override
  State<AbilityItem> createState() => _AbilityItemState();
}

class _AbilityItemState extends State<AbilityItem> {
  bool taped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          taped = !taped;
        });
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: currTheme.secondaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  boxShadow: const [cardShadow],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      abilityToString(widget.ability, context, reduction: true),
                      style: accentSmallTitleTextStyle,
                    ),
                    Text(
                      addPlusToInt(
                          widget.character.getAbilityModifier(widget.ability)),
                      style: smallValueTextStyle,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: currTheme.thirdColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                      width: 30,
                      height: 10,
                      alignment: Alignment.topCenter,
                      child: Text(
                        widget.character
                            .getAbilityValue(widget.ability)
                            .toString(),
                        style: smallTitleOnMainTextStyle.copyWith(height: 1.1),
                      ),
                    ),
                  ],
                ),
              ),
              Container(width: 15, height: 50, color: Colors.transparent),
            ],
          ),
          taped
              ? Positioned(
                  left: 42,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            widget.character.addAbilityToOne(widget.ability);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currTheme.thirdColor),
                            child: Icon(
                              Icons.add,
                              size: 20,
                              color: currTheme.onMainColor,
                            ),
                          ),
                        ),
                        Container(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {
                            widget.character.removeAbilityToOne(widget.ability);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: currTheme.thirdColor),
                            child: Icon(
                              Icons.remove,
                              size: 20,
                              color: currTheme.onMainColor,
                            ),
                          ),
                        ),
                      ]))
              : Column(),
        ],
      ),
    );
  }
}
