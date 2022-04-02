import 'package:character_sheet/domain/entities/character_entity.dart';

abstract class CharactersRepository {
  List<CharacterEntity> getAllCharacters();

  CharacterEntity getCharacter(int id);

  CharacterEntity getCharacterAt(int index);

  bool haveCharacterWithId(int id);

  void addCharacter(CharacterEntity characterModel);

  void putCharacter(CharacterEntity characterModel);
}