import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/domain/entities/ability_entity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../domain/entities/skill_entity.dart';

String addPlusToInt(int modifier) => modifier >= 0 ? "+$modifier" : "$modifier";

String alignmentLawToString(AlignmentLaw alignment, BuildContext context) {
  switch (alignment) {
    case AlignmentLaw.lawful:
      return AppLocalizations.of(context).lawful;
    case AlignmentLaw.neutral:
      return AppLocalizations.of(context).neutralLawful;
    case AlignmentLaw.chaotic:
      return AppLocalizations.of(context).chaotic;
  }
}

String alignmentGoodToString(AlignmentGood alignment, BuildContext context) {
  switch (alignment) {
    case AlignmentGood.good:
      return AppLocalizations.of(context).good;
    case AlignmentGood.neutral:
      return AppLocalizations.of(context).neutralGood;
    case AlignmentGood.evil:
      return AppLocalizations.of(context).evil;
  }
}

String abilityToString(Abilities ability, BuildContext context, {bool reduction = false}) {
  switch (ability) {
    case Abilities.strength:
      return reduction?AppLocalizations.of(context).strengthReduction : AppLocalizations.of(context).strength;
    case Abilities.dexterity:
      return reduction?AppLocalizations.of(context).dexterityReduction : AppLocalizations.of(context).dexterity;
    case Abilities.constitution:
      return reduction?AppLocalizations.of(context).constitutionReduction : AppLocalizations.of(context).constitution;
    case Abilities.intelligence:
      return reduction?AppLocalizations.of(context).intelligenceReduction : AppLocalizations.of(context).intelligence;
    case Abilities.wisdom:
      return reduction?AppLocalizations.of(context).wisdomReduction : AppLocalizations.of(context).wisdom;
    case Abilities.charisma:
      return reduction?AppLocalizations.of(context).charismaReduction : AppLocalizations.of(context).charisma;
  }
}

String skillToString(Skills skill, BuildContext context)
{
  switch(skill)
  {
    case Skills.acrobatics:
      return AppLocalizations.of(context).acrobatics;
    case Skills.animalHandling:
      return AppLocalizations.of(context).animalHandling;
    case Skills.arcana:
      return AppLocalizations.of(context).arcana;
    case Skills.athletics:
      return AppLocalizations.of(context).athletics;
    case Skills.deception:
      return AppLocalizations.of(context).deception;
    case Skills.history:
      return AppLocalizations.of(context).history;
    case Skills.insight:
      return AppLocalizations.of(context).insight;
    case Skills.intimidation:
      return AppLocalizations.of(context).intimidation;
    case Skills.investigation:
      return AppLocalizations.of(context).investigation;
    case Skills.medicine:
      return AppLocalizations.of(context).medicine;
    case Skills.nature:
      return AppLocalizations.of(context).nature;
    case Skills.perception:
      return AppLocalizations.of(context).perception;
    case Skills.performance:
      return AppLocalizations.of(context).performance;
    case Skills.persuasion:
      return AppLocalizations.of(context).persuasion;
    case Skills.religion:
      return AppLocalizations.of(context).religion;
    case Skills.sleightOfHand:
      return AppLocalizations.of(context).sleightOfHand;
    case Skills.stealth:
      return AppLocalizations.of(context).stealth;
    case Skills.survival:
      return AppLocalizations.of(context).survival;
  }
}