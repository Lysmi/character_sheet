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

class AbilityAdapter extends TypeAdapter<Ability> {
  @override
  final int typeId = 1;

  @override
  Ability read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Ability.strength;
      case 1:
        return Ability.dexterity;
      case 2:
        return Ability.constitution;
      case 3:
        return Ability.intelligence;
      case 4:
        return Ability.wisdom;
      case 5:
        return Ability.charisma;
      default:
        return Ability.strength;
    }
  }

  @override
  void write(BinaryWriter writer, Ability obj) {
    switch (obj) {
      case Ability.strength:
        writer.writeByte(0);
        break;
      case Ability.dexterity:
        writer.writeByte(1);
        break;
      case Ability.constitution:
        writer.writeByte(2);
        break;
      case Ability.intelligence:
        writer.writeByte(3);
        break;
      case Ability.wisdom:
        writer.writeByte(4);
        break;
      case Ability.charisma:
        writer.writeByte(5);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
