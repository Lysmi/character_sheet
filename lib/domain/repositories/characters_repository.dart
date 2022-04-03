import 'package:character_sheet/domain/entities/character_entity.dart';

abstract class CharactersRepository {
  List<CharacterEntity> getAllCharacters();

  CharacterEntity getCharacter(int id);

  bool haveCharacterWithId(int id);

  void addCharacter(CharacterEntity characterEntity);

  void putCharacter(CharacterEntity characterEntity);
}