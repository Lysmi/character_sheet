import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/hive/character_model.dart';

class CharactersRepository {
  final Box _charactersBox;

  CharactersRepository() : _charactersBox = Hive.box('characters');

  int get length => _charactersBox.length;

  List<CharacterModel> getAllCharacters() {
    List<CharacterModel> newCharactersList = [];
    for (var i = 0; i < _charactersBox.length; i++) {
      newCharactersList.add(_charactersBox.getAt(i));
    }
    return newCharactersList;
  }

  CharacterModel getCharacter(int id) {
    return _charactersBox.get(id);
  }

  CharacterModel getCharacterAt(int index) {
    return _charactersBox.getAt(index);
  }

  bool haveCharacterWithId(int id) {
    return _charactersBox.containsKey(id);
  }

  void addCharacter(CharacterModel characterModel) {
    _charactersBox.add(characterModel);
  }

  void putCharacter(CharacterModel characterModel) {
    _charactersBox.put(characterModel.id, characterModel);
  }
}
