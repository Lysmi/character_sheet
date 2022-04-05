import '../../../core/pair.dart';
import '../local_models/character_model.dart';

abstract class DataProvider {
  int get length;

  Future<List<Pair<int, CharacterModel>>> getAllCharacters();

  Future<Pair<int, CharacterModel>> getCharacter(int key);

  bool haveCharacterWithKey(int id);

  Future<int> addCharacter(CharacterModel characterModel);

  void putCharacter(CharacterModel characterModel, int key);
}
