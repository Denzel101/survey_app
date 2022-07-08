// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class QuestionHiveModelAdapter extends TypeAdapter<QuestionHiveModel> {
  @override
  final int typeId = 1;

  @override
  QuestionHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return QuestionHiveModel(
      id: fields[0] as String,
      question_type: fields[1] as String,
      answer_type: fields[2] as String,
      question_text: fields[3] as String,
      options: (fields[4] as List).cast<OptionHiveModel>(),
      next: fields[5] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, QuestionHiveModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.question_type)
      ..writeByte(2)
      ..write(obj.answer_type)
      ..writeByte(3)
      ..write(obj.question_text)
      ..writeByte(4)
      ..write(obj.options)
      ..writeByte(5)
      ..write(obj.next);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is QuestionHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
