import 'package:character_sheet/helpers.dart';
import 'package:character_sheet/screens/character_stats/widgets/stat.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/models/provider/character_provider_model.dart';

class DerivedStats extends StatelessWidget {
  const DerivedStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
        builder: (context, character, child) {
          return Row(
            children: [
              Flexible(
                child: Stat(
                  name: "AC",
                  value: character.ac.toString(),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Flexible(
                child: Stat(
                  name: "Initiative",
                  value: addPlusToInt(character.initiative),
                ),
              ),
              const SizedBox(
                width: 11,
              ),
              Flexible(
                child: Stat(
                  name: "Speed",
                  value: character.speed.toString(),
                ),
              ),
            ],
          );
        }
    );
  }
}
