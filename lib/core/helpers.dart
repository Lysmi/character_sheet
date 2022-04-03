import 'package:character_sheet/data/models/local_models/character_model.dart';

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