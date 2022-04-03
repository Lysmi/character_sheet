import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/domain/repositories/characters_repository.dart';

import '../models/hive/character_model.dart';
import '../models/providers/local_data_provider.dart';

class CharactersRepositoryImplement implements CharactersRepository {
  LocalDataProvider dataProvider = LocalDataProvider();

  @override
  void addCharacter(CharacterEntity characterEntity) {
    dataProvider.addCharacter(CharacterModel.fromEntity(characterEntity));
  }

  @override
  List<CharacterEntity> getAllCharacters() {
    return dataProvider.getAllCharacters().map((e) => e.toEntity()).toList();
  }

  @override
  void putCharacter(CharacterEntity characterEntity) {
    dataProvider.putCharacter(CharacterModel.fromEntity(characterEntity));
  }

  @override
  CharacterEntity getCharacter(int id) {
    return dataProvider.getCharacter(id).toEntity();
  }
}
