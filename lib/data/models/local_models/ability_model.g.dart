// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AbilityModelAdapter extends TypeAdapter<AbilityModel> {
  @override
  final int typeId = 0;

  @override
  AbilityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AbilityModel(
      value: fields[0] as int,
      saveProficiency: fields[1] as bool,
      saveBonus: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AbilityModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.saveProficiency)
      ..writeByte(2)
      ..write(obj.saveBonus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CharactersAbilitiesModelAdapter
    extends TypeAdapter<CharactersAbilitiesModel> {
  @override
  final int typeId = 1;

  @override
  CharactersAbilitiesModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharactersAbilitiesModel(
      strength: fields[0] as AbilityModel,
      dexterity: fields[1] as AbilityModel,
      constitution: fields[2] as AbilityModel,
      intelligence: fields[3] as AbilityModel,
      wisdom: fields[4] as AbilityModel,
      charisma: fields[5] as AbilityModel,
    );
  }

  @override
  void write(BinaryWriter writer, CharactersAbilitiesModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.strength)
      ..writeByte(1)
      ..write(obj.dexterity)
      ..writeByte(2)
      ..write(obj.constitution)
      ..writeByte(3)
      ..write(obj.intelligence)
      ..writeByte(4)
      ..write(obj.wisdom)
      ..writeByte(5)
      ..write(obj.charisma);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharactersAbilitiesModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
