import 'package:character_sheet/core/errors/error.dart';
import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/domain/repositories/characters_repository.dart';
import 'package:either_dart/either.dart';

class CharactersRead {
  final CharactersRepository repository;

  CharactersRead(this.repository);

  Future<List<CharacterEntity>> getAllCharacters() {
    return repository.getAllCharacters();
  }

  Future<CharacterEntity> getCharacterByKey(int key) {
    return repository.getCharacter(key);
  }
}