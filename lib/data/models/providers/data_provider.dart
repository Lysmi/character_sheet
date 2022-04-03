import '../local_models/character_model.dart';

abstract class DataProvider {
  int get length;

  List<CharacterModel> getAllCharacters();

  CharacterModel getCharacter(int id);

  CharacterModel getCharacterAt(int index);

  bool haveCharacterWithId(int id);

  void addCharacter(CharacterModel characterModel);

  void putCharacter(CharacterModel characterModel);
}
