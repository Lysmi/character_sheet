import 'package:character_sheet/presentation/screens/provider_models/character_provider_model.dart';
import 'package:character_sheet/presentation/styles/assets_images.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class DeathSave extends StatelessWidget {
  const DeathSave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 123,
      decoration: BoxDecoration(
        color: currTheme.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        boxShadow: const [cardShadow],
      ),
      child: Column(
        children: [
          Container(
            height: 26,
            alignment: Alignment.center,
            child: Text(
              AppLocalizations.of(context).death_save_title,
              style: smallTitleTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
          Consumer<CharacterProviderModel>(
            builder: (context, character, child) {
              return Wrap(
                direction: Axis.horizontal,
                spacing: 10,
                children: [
                  Wrap(
                    spacing: 4,
                    direction: Axis.vertical,
                    children: [
                      GestureDetector(
                        onTap: () => character.changeDeathSaveSuccess(0),
                        child: Image(
                          image:
                              character.deathSaveSuccess[0] ? assetSuccessTrue : assetSuccessFalse,
                          width: 28,
                          height: 28,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => character.changeDeathSaveSuccess(1),
                        child: Image(
                          image:
                              character.deathSaveSuccess[1] ? assetSuccessTrue : assetSuccessFalse,
                          width: 28,
                          height: 28,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => character.changeDeathSaveSuccess(2),
                        child: Image(
                          image:
                              character.deathSaveSuccess[2] ? assetSuccessTrue : assetSuccessFalse,
                          width: 28,
                          height: 28,
                        ),
                      ),
                    ],
                  ),
                  Wrap(
                    spacing: 4,
                    direction: Axis.vertical,
                    children: [
                      GestureDetector(
                        onTap: () => character.changeDeathSaveFailure(0),
                        child: Image(
                          image:
                              character.deathSaveFailure[0] ? assetFailureTrue : assetFailureFalse,
                          width: 28,
                          height: 28,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => character.changeDeathSaveFailure(1),
                        child: Image(
                          image:
                              character.deathSaveFailure[1] ? assetFailureTrue : assetFailureFalse,
                          width: 28,
                          height: 28,
                        ),
                      ),
                      GestureDetector(
                        onTap: () => character.changeDeathSaveFailure(2),
                        child: Image(
                          image:
                              character.deathSaveFailure[2] ? assetFailureTrue : assetFailureFalse,
                          width: 28,
                          height: 28,
                        ),
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
