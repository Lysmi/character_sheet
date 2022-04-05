// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SkillModelAdapter extends TypeAdapter<SkillModel> {
  @override
  final int typeId = 6;

  @override
  SkillModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SkillModel(
      proficiency: fields[0] as bool,
      bonus: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, SkillModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.proficiency)
      ..writeByte(1)
      ..write(obj.bonus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SkillModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CharactersSkillsModelAdapter extends TypeAdapter<CharactersSkillsModel> {
  @override
  final int typeId = 7;

  @override
  CharactersSkillsModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CharactersSkillsModel(
      acrobatics: fields[0] as SkillModel,
      animalHandling: fields[1] as SkillModel,
      arcana: fields[2] as SkillModel,
      athletics: fields[3] as SkillModel,
      deception: fields[4] as SkillModel,
      history: fields[5] as SkillModel,
      insight: fields[6] as SkillModel,
      intimidation: fields[7] as SkillModel,
      investigation: fields[8] as SkillModel,
      medicine: fields[9] as SkillModel,
      nature: fields[10] as SkillModel,
      perception: fields[11] as SkillModel,
      performance: fields[12] as SkillModel,
      persuasion: fields[13] as SkillModel,
      religion: fields[14] as SkillModel,
      sleightOfHand: fields[15] as SkillModel,
      stealth: fields[16] as SkillModel,
      survival: fields[17] as SkillModel,
    );
  }

  @override
  void write(BinaryWriter writer, CharactersSkillsModel obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.acrobatics)
      ..writeByte(1)
      ..write(obj.animalHandling)
      ..writeByte(2)
      ..write(obj.arcana)
      ..writeByte(3)
      ..write(obj.athletics)
      ..writeByte(4)
      ..write(obj.deception)
      ..writeByte(5)
      ..write(obj.history)
      ..writeByte(6)
      ..write(obj.insight)
      ..writeByte(7)
      ..write(obj.intimidation)
      ..writeByte(8)
      ..write(obj.investigation)
      ..writeByte(9)
      ..write(obj.medicine)
      ..writeByte(10)
      ..write(obj.nature)
      ..writeByte(11)
      ..write(obj.perception)
      ..writeByte(12)
      ..write(obj.performance)
      ..writeByte(13)
      ..write(obj.persuasion)
      ..writeByte(14)
      ..write(obj.religion)
      ..writeByte(15)
      ..write(obj.sleightOfHand)
      ..writeByte(16)
      ..write(obj.stealth)
      ..writeByte(17)
      ..write(obj.survival);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CharactersSkillsModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
