import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/screens/widgets/char_progress_bar.dart';
import 'package:character_sheet/presentation/screens/widgets/input_dialog.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                builder: (context, character, child) => CharProgressBar(
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
    int _inputValue = 0;
    showDialog(
      context: context,
      builder: (_) => InputDialog(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currTheme.secondaryColor,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  hintText: "0",
                ),
                cursorColor: currTheme.accentMainColor,
                onChanged: (value) {
                  _inputValue = int.parse(value);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: currTheme.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Provider.of<CharacterProviderModel>(context, listen: false)
                          .removeHit(_inputValue);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Remove hits",
                      textAlign: TextAlign.center,
                      style: titleOnMainTextStyle,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: currTheme.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Provider.of<CharacterProviderModel>(context, listen: false)
                          .removeTemporaryHit(_inputValue);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Remove\ntemporary hits",
                      textAlign: TextAlign.center,
                      style: titleOnMainTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  addHealthPressed(context) {
    Provider.of<CharacterProviderModel>(context, listen: false).addHit(1);
  }
}
