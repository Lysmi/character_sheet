import 'package:character_sheet/presentation/styles/assets_images.dart';
import 'package:character_sheet/presentation/styles/colours.dart';
import 'package:character_sheet/presentation/styles/global_styles.dart';
import 'package:character_sheet/presentation/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../provider_models/character_provider_model.dart';

class Inspiration extends StatelessWidget {
  const Inspiration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CharacterProviderModel>(
      builder: (context, character, child) => GestureDetector(
        onTap: () => character.changeInspiration(),
        child: Container(
          width: 107,
          height: 20,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: currTheme.secondaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            boxShadow: const [cardShadow],
          ),
          child: Row(
            children: [
              character.inspiration
                  ? const Image(
                      width: 15,
                      height: 15,
                      image: assetSuccessTrue,
                    )
                  : const Image(
                      width: 15,
                      height: 15,
                      image: assetSuccessFalse,
                    ),
              const SizedBox(width: 8),
              Text(
                AppLocalizations.of(context).inspiration,
                style: smallTitleOnMainTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
