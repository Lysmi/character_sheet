import '../../../core/pair.dart';
import '../local_models/character_model.dart';

abstract class DataProvider {
  int get length;

  List<Pair<int, CharacterModel>> getAllCharacters();

  Pair<int, CharacterModel> getCharacter(int key);

  bool haveCharacterWithKey(int id);

  void addCharacter(CharacterModel characterModel);

  void putCharacter(CharacterModel characterModel, int key);
}
