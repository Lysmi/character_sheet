import 'package:character_sheet/data/models/hive/character_model.dart';
import 'package:character_sheet/data/models/providers/data_provider.dart';
import 'package:hive/hive.dart';

class LocalDataProvider implements DataProvider
{
  final Box _charactersBox = Hive.box('characters');

  @override
  void addCharacter(CharacterModel characterModel) async {
    _charactersBox.add(characterModel);
  }

  @override
  List<CharacterModel> getAllCharacters() {
    List<CharacterModel> newCharactersList = [];
    for (var i = 0; i < _charactersBox.length; i++) {
      newCharactersList.add(_charactersBox.getAt(i));
    }
    return newCharactersList;
  }

  @override
  CharacterModel getCharacter(int id) {
    return _charactersBox.get(id);
  }

  @override
  CharacterModel getCharacterAt(int index) {
    return _charactersBox.getAt(index);
  }

  @override
  bool haveCharacterWithId(int id) {
    return _charactersBox.containsKey(id);
  }

  @override
  void putCharacter(CharacterModel characterModel) {
    _charactersBox.put(characterModel.id, characterModel);
  }

  @override
  int get length => _charactersBox.length;

}