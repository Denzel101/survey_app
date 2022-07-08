// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AnswerHiveModelAdapter extends TypeAdapter<AnswerHiveModel> {
  @override
  final int typeId = 3;

  @override
  AnswerHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AnswerHiveModel(
      id: fields[0] as String,
      questionId: fields[1] as String,
      value: fields[2] as String,
      responseTime: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, AnswerHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.questionId)
      ..writeByte(2)
      ..write(obj.value)
      ..writeByte(3)
      ..write(obj.responseTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnswerHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
