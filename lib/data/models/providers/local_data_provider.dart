import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/data/models/providers/data_provider.dart';
import 'package:hive/hive.dart';

import '../../../core/pair.dart';

class LocalDataProvider implements DataProvider {
  final _charactersBox = Hive.box("characters");

  @override
  void addCharacter(CharacterModel characterModel) async {
    _charactersBox.add(characterModel);
  }

  @override
  List<Pair<int, CharacterModel>> getAllCharacters() {
    List<Pair<int, CharacterModel>> newCharactersList = [];
    for (var i = 0; i < _charactersBox.length; i++) {
      newCharactersList.add(Pair(
        _charactersBox.keyAt(i),
        _charactersBox.getAt(i),
      ));
    }
    return newCharactersList;
  }

  @override
  Pair<int, CharacterModel> getCharacter(int key) {
    return Pair(
      key,
      _charactersBox.get(key),
    );
  }


  @override
  bool haveCharacterWithKey(int key) {
    return _charactersBox.containsKey(key);
  }

  @override
  void putCharacter(CharacterModel characterModel, int key) {

  }

  @override
  int get length => _charactersBox.length;
}
