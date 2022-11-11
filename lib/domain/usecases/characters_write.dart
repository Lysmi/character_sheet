import 'package:character_sheet/domain/entities/character_entity.dart';
import 'package:character_sheet/domain/repositories/characters_repository.dart';

import '../../data/models/local_models/character_model.dart';
import '../entities/ability_entity.dart';
import '../entities/class_entity.dart';
import '../entities/skill_entity.dart';

class CharactersWrite {
  final CharactersRepository repository;

  CharactersWrite(this.repository);

  void putCharacter(CharacterEntity characterEntity) {
    return repository.putCharacter(characterEntity);
  }

  Future<CharacterEntity> createCharacter() async {
    final CharacterEntity _newEntity = CharacterEntity(
        name: "William",
        race: "Elf",
        subrace: "High Elf",
        classes: [
          ClassEntity(
              name: "Barbarian",
              subclass: "Totem Warrior",
              lvl: 2,
              hitDice: 12),
        ],
        experience: 1204,
        background: "Criminal",
        alignmentLaw: AlignmentLaw.chaotic,
        alignmentGood: AlignmentGood.neutral,
        inspiration: false,
        armorClass: 16,
        initiativeBonus: 5,
        speed: 30,
        deathSaveFailure: [false, false, false],
        deathSaveSuccess: [false, false, false],
        maxHit: 27,
        currentHit: 20,
        tempHit: 5,
        abilities: CharactersAbilities(
          charismaData: AbilityDataEntity(
            saveProficiency: false,
            value: 13,
            saveBonus: 0,
          ),
          constitutionData: AbilityDataEntity(
            saveProficiency: false,
            value: 13,
            saveBonus: 0,
          ),
          dexterityData: AbilityDataEntity(
            saveProficiency: false,
            value: 13,
            saveBonus: 0,
          ),
          intelligenceData: AbilityDataEntity(
            saveProficiency: false,
            value: 14,
            saveBonus: 0,
          ),
          wisdomData: AbilityDataEntity(
            saveProficiency: false,
            value: 13,
            saveBonus: 0,
          ),
          strengthData: AbilityDataEntity(
            saveProficiency: true,
            value: 13,
            saveBonus: 0,
          ),
        ),
        skills: CharactersSkills.defaultSkills(),
        feats: []);
    return await repository.addCharacter(_newEntity);
  }
}
