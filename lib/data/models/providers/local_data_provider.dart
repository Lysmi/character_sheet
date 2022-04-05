import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/data/models/providers/data_provider.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../../core/pair.dart';

class LocalDataProvider implements DataProvider {
  final _charactersBox = Hive.box("characters");

  @override
  Future<int> addCharacter(CharacterModel characterModel) async {
    return _charactersBox.add(characterModel);
  }

  @override
  Future<List<Pair<int, CharacterModel>>> getAllCharacters() async {
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
  Future<Pair<int, CharacterModel>> getCharacter(int key) async {
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
  void putCharacter(CharacterModel characterModel, int key)
  {
    _charactersBox.put(key, characterModel);
  }

  @override
  int get length => _charactersBox.length;
}
