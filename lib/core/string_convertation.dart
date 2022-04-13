import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

String addPlusToInt(int modifier) => modifier >= 0 ? "+$modifier" : "$modifier";

String alignmentLawToString(AlignmentLaw alignment) {
  switch (alignment) {
    case AlignmentLaw.lawful:
      return "Lawful";
    case AlignmentLaw.neutral:
      return "Neutral";
    case AlignmentLaw.chaotic:
      return "Chaotic";
  }
}

String alignmentGoodToString(AlignmentGood alignment) {
  switch (alignment) {
    case AlignmentGood.good:
      return "Good";
    case AlignmentGood.neutral:
      return "Neutral";
    case AlignmentGood.evil:
      return "Evil";
  }
}

String abilityToString(Abilities ability, BuildContext context) {
  switch (ability) {
    case Abilities.strength:
      return AppLocalizations.of(context).strength;
    case Abilities.dexterity:
      return AppLocalizations.of(context).dexterity;
    case Abilities.constitution:
      return AppLocalizations.of(context).constitution;
    case Abilities.intelligence:
      return AppLocalizations.of(context).intelligence;
    case Abilities.wisdom:
      return AppLocalizations.of(context).wisdom;
    case Abilities.charisma:
      return AppLocalizations.of(context).charisma;
  }
}