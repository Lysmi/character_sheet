// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SkillModelAdapter extends TypeAdapter<SkillModel> {
  @override
  final int typeId = 2;

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

class SkillAdapter extends TypeAdapter<Skill> {
  @override
  final int typeId = 3;

  @override
  Skill read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return Skill.acrobatics;
      case 1:
        return Skill.animalHandling;
      case 2:
        return Skill.arcana;
      case 3:
        return Skill.athletics;
      case 4:
        return Skill.deception;
      case 5:
        return Skill.history;
      case 6:
        return Skill.insight;
      case 7:
        return Skill.intimidation;
      case 8:
        return Skill.investigation;
      case 9:
        return Skill.medicine;
      case 10:
        return Skill.nature;
      case 11:
        return Skill.perception;
      case 12:
        return Skill.performance;
      case 13:
        return Skill.persuasion;
      case 14:
        return Skill.religion;
      case 15:
        return Skill.sleightOfHand;
      case 16:
        return Skill.stealth;
      case 17:
        return Skill.survival;
      default:
        return Skill.acrobatics;
    }
  }

  @override
  void write(BinaryWriter writer, Skill obj) {
    switch (obj) {
      case Skill.acrobatics:
        writer.writeByte(0);
        break;
      case Skill.animalHandling:
        writer.writeByte(1);
        break;
      case Skill.arcana:
        writer.writeByte(2);
        break;
      case Skill.athletics:
        writer.writeByte(3);
        break;
      case Skill.deception:
        writer.writeByte(4);
        break;
      case Skill.history:
        writer.writeByte(5);
        break;
      case Skill.insight:
        writer.writeByte(6);
        break;
      case Skill.intimidation:
        writer.writeByte(7);
        break;
      case Skill.investigation:
        writer.writeByte(8);
        break;
      case Skill.medicine:
        writer.writeByte(9);
        break;
      case Skill.nature:
        writer.writeByte(10);
        break;
      case Skill.perception:
        writer.writeByte(11);
        break;
      case Skill.performance:
        writer.writeByte(12);
        break;
      case Skill.persuasion:
        writer.writeByte(13);
        break;
      case Skill.religion:
        writer.writeByte(14);
        break;
      case Skill.sleightOfHand:
        writer.writeByte(15);
        break;
      case Skill.stealth:
        writer.writeByte(16);
        break;
      case Skill.survival:
        writer.writeByte(17);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SkillAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
