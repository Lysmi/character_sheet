import 'package:character_sheet/core/errors/error.dart';
import 'package:character_sheet/data/models/local_models/character_model.dart';
import 'package:character_sheet/data/models/providers/data_provider.dart';
import 'package:either_dart/either.dart';
import 'package:hive/hive.dart';

import '../../../core/errors/database_error.dart';
import '../../../core/pair.dart';

class LocalDataProvider implements DataProvider {
  final _charactersBox = Hive.box("characters");

  @override
  Future<int> addCharacter(CharacterModel characterModel) async {
    try{
      return await _charactersBox.add(characterModel);
    } catch(e) {
      throw DatabaseError("AddCharacter error");
    }
  }

  @override
  Future<List<Pair<int, CharacterModel>>> getAllCharacters() async {
    try{
      List<Pair<int, CharacterModel>> newCharactersList = [];
      for (var i = 0; i < _charactersBox.length; i++) {
        newCharactersList.add(Pair(
          _charactersBox.keyAt(i),
          _charactersBox.getAt(i),
        ));
      }
      return newCharactersList;
    } catch(e) {
      throw DatabaseError("GetAllCharacters() error");
    }
  }

  @override
  Future<Pair<int, CharacterModel>> getCharacter(int key) async {
    try{
      return Pair(
        key,
        _charactersBox.get(key),
      );
    } catch(e) {
      throw DatabaseError("GetCharacter() error");
    }
  }

  @override
  Future<bool> existCharacterWithKey(int key) async {
    try{
      return _charactersBox.containsKey(key);
    } catch(e) {
      throw DatabaseError("ExistCharacterWithKey() error");
    }
  }

  @override
  void putCharacter(CharacterModel characterModel, int key) {
    _charactersBox.put(key, characterModel);
  }

  @override
  int get length => _charactersBox.length;
}
