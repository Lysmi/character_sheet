// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'class_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ClassModelAdapter extends TypeAdapter<ClassModel> {
  @override
  final int typeId = 4;

  @override
  ClassModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClassModel(
      name: fields[0] as String,
      subclass: fields[1] as String?,
      lvl: fields[2] as int,
      hitDice: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, ClassModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.subclass)
      ..writeByte(2)
      ..write(obj.lvl)
      ..writeByte(3)
      ..write(obj.hitDice);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClassModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
