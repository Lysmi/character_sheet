import 'package:character_sheet/styles/colours.dart';
import 'package:character_sheet/styles/global_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/models/provider/character_provider_model.dart';
import '../../../widgets/char_progress_bar.dart';

class Health extends StatelessWidget {
  const Health({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 9),
      height: 25,
      child: Row(
        children: [
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              boxShadow: const [cardShadow],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              splashRadius: 20,
              padding: EdgeInsets.zero,
              onPressed: () => removeHealthPressed(context),
              icon: const Icon(Icons.remove),
              iconSize: 20,
              color: currTheme.onMainColor,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Consumer<CharacterProviderModel>(
                builder:(context, character, child) => CharProgressBar(
                  maxValue: character.maxHit,
                  currentValue: character.currentHit,
                  tempValue: character.tempHit,
                  valueColor: currTheme.greenColor,
                  backgroundColor: currTheme.secondaryColor,
                  tempValueColor: currTheme.greenDarkColor,
                ),
              ),
            ),
          ),
          Container(
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: currTheme.secondaryColor,
              boxShadow: const [cardShadow],
              shape: BoxShape.circle,
            ),
            child: IconButton(
                splashRadius: 20,
                padding: EdgeInsets.zero,
                onPressed: () => addHealthPressed(context),
                icon: const Icon(Icons.add),
                color: currTheme.onMainColor,
                iconSize: 20),
          ),
        ],
      ),
    );
  }

  removeHealthPressed(context) {
    Provider.of<CharacterProviderModel>(context, listen: false).addHit(1);
  }

  addHealthPressed(context) {
    Provider.of<CharacterProviderModel>(context, listen: false).removeHit(1);

  }
}


