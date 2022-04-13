import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String addPlusToInt(int modifier) => modifier >= 0 ? "+$modifier" : "$modifier";

String alignmentLawToString(AlignmentLaw alignment, BuildContext context) {
  switch (alignment) {
    case AlignmentLaw.lawful:
      return AppLocalizations.of(context).lawful;
    case AlignmentLaw.neutral:
      return AppLocalizations.of(context).neutral_lawful;
    case AlignmentLaw.chaotic:
      return AppLocalizations.of(context).chaotic;
  }
}

String alignmentGoodToString(AlignmentGood alignment, BuildContext context) {
  switch (alignment) {
    case AlignmentGood.good:
      return AppLocalizations.of(context).good;
    case AlignmentGood.neutral:
      return AppLocalizations.of(context).neutral_good;
    case AlignmentGood.evil:
      return AppLocalizations.of(context).evil;
  }
}

String abilityToString(Abilities ability, BuildContext context, {bool reduction = false}) {
  switch (ability) {
    case Abilities.strength:
      return reduction?AppLocalizations.of(context).strength_reduction : AppLocalizations.of(context).strength;
    case Abilities.dexterity:
      return reduction?AppLocalizations.of(context).dexterity_reduction : AppLocalizations.of(context).dexterity;
    case Abilities.constitution:
      return reduction?AppLocalizations.of(context).constitution_reduction : AppLocalizations.of(context).constitution;
    case Abilities.intelligence:
      return reduction?AppLocalizations.of(context).intelligence_reduction : AppLocalizations.of(context).intelligence;
    case Abilities.wisdom:
      return reduction?AppLocalizations.of(context).wisdom_reduction : AppLocalizations.of(context).wisdom;
    case Abilities.charisma:
      return reduction?AppLocalizations.of(context).charisma_reduction : AppLocalizations.of(context).charisma;
  }
}