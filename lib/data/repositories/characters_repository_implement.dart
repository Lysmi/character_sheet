import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/domain/repositories/characters_repository.dart';

import '../models/local_models/character_model.dart';
import '../models/providers/local_data_provider.dart';

class CharactersRepositoryImplement implements CharactersRepository {
  LocalDataProvider dataProvider = LocalDataProvider();

  @override
  Future<List<CharacterEntity>> getAllCharacters() async {
    final characters = await dataProvider.getAllCharacters();
    return characters.map((e) => e.second.toEntity(e.first)).toList();
  }

  @override
  Future<CharacterEntity> getCharacter(int key) async {
    final char = await dataProvider.getCharacter(key);
    return char.second.toEntity(key);
  }

  @override
  void addCharacter(CharacterEntity characterEntity) {
    dataProvider.addCharacter(CharacterModel.fromEntity(characterEntity));
  }

  @override
  void putCharacter(CharacterEntity characterEntity) {
    dataProvider.putCharacter(CharacterModel.fromEntity(characterEntity), characterEntity.key);
  }
}
