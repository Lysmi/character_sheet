import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:flutter/cupertino.dart';

import '../../../data/repositories/characters_repository_implement.dart';
import '../../../domain/usecases/characters_read.dart';
import '../../../domain/usecases/characters_write.dart';

class CharacterListProviderModel extends ChangeNotifier {
  final CharactersRepositoryImplement _repository = CharactersRepositoryImplement();
  late final CharactersWrite _charactersWrite;
  late final CharactersRead _charactersRead;
  List<CharacterEntity> _characterList = [];

  CharacterListProviderModel() {
    _charactersWrite = CharactersWrite(_repository);
    _charactersRead = CharactersRead(_repository);
  }

  Future<CharacterEntity> addCharacter() async {
    CharacterEntity character = await _charactersWrite.createCharacter();
    _characterList.add(character);
    notifyListeners();
    return character;
  }

  Future<List<CharacterEntity>> getAllCharacter() async {
    _characterList = await _charactersRead.getAllCharacters();
    return _characterList;
  }
}
