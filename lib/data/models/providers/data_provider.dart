import 'package:character_sheet/core/errors/error.dart';
import 'package:either_dart/either.dart';

import '../../../core/pair.dart';
import '../local_models/character_model.dart';

abstract class DataProvider {
  int get length;

  Future<List<Pair<int, CharacterModel>>> getAllCharacters();

  Future<Pair<int, CharacterModel>> getCharacter(int key);

  Future<bool> existCharacterWithKey(int id);

  Future<int> addCharacter(CharacterModel characterModel);

  void putCharacter(CharacterModel characterModel, int key);
}
