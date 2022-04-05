import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/domain/repositories/characters_repository.dart';

import '../models/local_models/character_model.dart';
import '../models/providers/local_data_provider.dart';

class CharactersRepositoryImplement implements CharactersRepository {
  LocalDataProvider dataProvider = LocalDataProvider();

  @override
  void addCharacter(CharacterEntity characterEntity) {
    dataProvider.addCharacter(CharacterModel.fromEntity(characterEntity));
  }

  @override
  List<CharacterEntity> getAllCharacters() {
    return dataProvider.getAllCharacters().map((e) => e.second.toEntity(e.first)).toList();
  }

  @override
  void putCharacter(CharacterEntity characterEntity) {
    dataProvider.putCharacter(CharacterModel.fromEntity(characterEntity), characterEntity.key);
  }

  @override
  CharacterEntity getCharacter(int key) {
    return dataProvider.getCharacter(key).second.toEntity(key);
  }
}
