import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/hive/character_model.dart';

class CharacterRepository {
  final Box _charactersBox;

  CharacterRepository() : _charactersBox = Hive.box('characters');

  List<CharacterModel> getAllCharacters() {
    List<CharacterModel> newCharactersList = [];
    for (var i = 0; i < _charactersBox.length; i++) {
      newCharactersList.add(_charactersBox.getAt(i));
    }
    return newCharactersList;
  }

  CharacterModel getCharacterAt(int index) {
    return _charactersBox.getAt(index);
  }

  void addCharacter(CharacterModel characterModel) {
    _charactersBox.add(characterModel);
  }

  void putCharacter(CharacterModel characterModel) {
    characterModel.save();
  }
}
