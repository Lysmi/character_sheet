import 'package:character_sheet/domain/entities/character_entity.dart';

abstract class CharactersRepository {
  Future<List<CharacterEntity>> getAllCharacters();

  Future<CharacterEntity> getCharacter(int id);

  void addCharacter(CharacterEntity characterEntity);

  void putCharacter(CharacterEntity characterEntity);
}