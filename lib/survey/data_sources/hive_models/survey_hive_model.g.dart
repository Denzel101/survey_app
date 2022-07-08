// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurveyHiveModelAdapter extends TypeAdapter<SurveyHiveModel> {
  @override
  final int typeId = 0;

  @override
  SurveyHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SurveyHiveModel(
      id: fields[0] as String,
      start_question_id: fields[1] as String,
      questions: (fields[2] as List).cast<QuestionHiveModel>(),
      strings: (fields[3] as Map).map((dynamic k, dynamic v) =>
          MapEntry(k as String, (v as Map?)?.cast<String, Object?>())),
    );
  }

  @override
  void write(BinaryWriter writer, SurveyHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.start_question_id)
      ..writeByte(2)
      ..write(obj.questions)
      ..writeByte(3)
      ..write(obj.strings);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
