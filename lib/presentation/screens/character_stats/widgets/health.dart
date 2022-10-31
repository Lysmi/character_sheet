import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../provider_models/character_provider_model.dart';
import '../../../widgets/char_progress_bar.dart';
import '../../../widgets/input_dialog.dart';

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
              onPressed: () => damageHealthPressed(context),
              icon: const Icon(Icons.remove),
              iconSize: 20,
              color: currTheme.onMainColor,
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => editHealthPressed(context),
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

  editHealthPressed(context) {
    int _inputValue = 0;
    var characterState =
        Provider.of<CharacterProviderModel>(context, listen: false);
    showDialog(
      context: context,
      builder: (_) => InputDialog(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context).hit(characterState.currentHit),
                  style: titleOnMainTextStyle,
                ),
                Text(
                  AppLocalizations.of(context).tempHit(characterState.tempHit),
                  style: titleOnMainTextStyle,
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
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
                keyboardType: TextInputType.number,
                style: titleOnMainTextStyle,
                cursorColor: currTheme.accentMainColor,
                onChanged: (value) {
                  // TODO Добавить обработчик
                  _inputValue =
                      double.parse(value.replaceAll(",", ".")).toInt();
                },
              ),
            ),
            Wrap(
              runSpacing: 5,
              spacing: 3,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: currTheme.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Provider.of<CharacterProviderModel>(context,
                              listen: false)
                          .addHit(_inputValue);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      AppLocalizations.of(context).addHitButton,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: titleOnMainTextStyle,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: currTheme.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Provider.of<CharacterProviderModel>(context,
                              listen: false)
                          .addTemporaryHit(_inputValue);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      AppLocalizations.of(context).addTempHitButton,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: titleOnMainTextStyle,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: currTheme.secondaryColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    onPressed: () {
                      Provider.of<CharacterProviderModel>(context,
                              listen: false)
                          .addDamage(_inputValue);
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      AppLocalizations.of(context).dealDamageButton,
                      softWrap: true,
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

  damageHealthPressed(context) {
    Provider.of<CharacterProviderModel>(context, listen: false).addDamage(1);
  }

  addHealthPressed(context) {
    Provider.of<CharacterProviderModel>(context, listen: false).addHit(1);
  }
}
