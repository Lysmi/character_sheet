// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CharacterModelAdapter extends TypeAdapter<CharacterModel> {
  @override
  final int typeId = 5;

  @override
  CharacterModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharacterModel(
      name: fields[0] as String,
      race: fields[1] as String,
      subrace: fields[2] as String,
      classes: (fields[3] as List).cast<ClassModel>(),
      xp: fields[4] as int,
      background: fields[5] as String,
      alignmentLaw: fields[6] as AlignmentLaw,
      alignmentGood: fields[7] as AlignmentGood,
      inspiration: fields[8] as bool,
      ac: fields[9] as int,
      initiativeBonus: fields[10] as int,
      speed: fields[11] as int,
      deathSaveFailure: (fields[12] as List).cast<bool>(),
      deathSaveSuccess: (fields[13] as List).cast<bool>(),
      maxHit: fields[14] as int,
      currentHit: fields[15] as int,
      tempHit: fields[16] as int,
      abilityList: (fields[17] as Map).cast<Ability, AbilityModel>(),
      skillList: (fields[18] as Map).cast<Skill, SkillModel>(),
      id: fields[19] as int,
    );
  }

  @override
  void write(BinaryWriter writer, CharacterModel obj) {
    writer
      ..writeByte(20)
      ..writeByte(19)
      ..write(obj.id)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.race)
      ..writeByte(2)
      ..write(obj.subrace)
      ..writeByte(3)
      ..write(obj.classes)
      ..writeByte(4)
      ..write(obj.xp)
      ..writeByte(5)
      ..write(obj.background)
      ..writeByte(6)
      ..write(obj.alignmentLaw)
      ..writeByte(7)
      ..write(obj.alignmentGood)
      ..writeByte(8)
      ..write(obj.inspiration)
      ..writeByte(9)
      ..write(obj.ac)
      ..writeByte(10)
      ..write(obj.initiativeBonus)
      ..writeByte(11)
      ..write(obj.speed)
      ..writeByte(12)
      ..write(obj.deathSaveFailure)
      ..writeByte(13)
      ..write(obj.deathSaveSuccess)
      ..writeByte(14)
      ..write(obj.maxHit)
      ..writeByte(15)
      ..write(obj.currentHit)
      ..writeByte(16)
      ..write(obj.tempHit)
      ..writeByte(17)
      ..write(obj.abilityList)
      ..writeByte(18)
      ..write(obj.skillList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharacterModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AlignmentLawAdapter extends TypeAdapter<AlignmentLaw> {
  @override
  final int typeId = 6;

  @override
  AlignmentLaw read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AlignmentLaw.lawful;
      case 1:
        return AlignmentLaw.neutral;
      case 2:
        return AlignmentLaw.chaotic;
      default:
        return AlignmentLaw.lawful;
    }
  }

  @override
  void write(BinaryWriter writer, AlignmentLaw obj) {
    switch (obj) {
      case AlignmentLaw.lawful:
        writer.writeByte(0);
        break;
      case AlignmentLaw.neutral:
        writer.writeByte(1);
        break;
      case AlignmentLaw.chaotic:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlignmentLawAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AlignmentGoodAdapter extends TypeAdapter<AlignmentGood> {
  @override
  final int typeId = 7;

  @override
  AlignmentGood read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return AlignmentGood.good;
      case 1:
        return AlignmentGood.neutral;
      case 2:
        return AlignmentGood.evil;
      default:
        return AlignmentGood.good;
    }
  }

  @override
  void write(BinaryWriter writer, AlignmentGood obj) {
    switch (obj) {
      case AlignmentGood.good:
        writer.writeByte(0);
        break;
      case AlignmentGood.neutral:
        writer.writeByte(1);
        break;
      case AlignmentGood.evil:
        writer.writeByte(2);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AlignmentGoodAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
