// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_response_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SurveyResponseHiveModelAdapter
    extends TypeAdapter<SurveyResponseHiveModel> {
  @override
  final int typeId = 4;

  @override
  SurveyResponseHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return SurveyResponseHiveModel(
      id: fields[0] as String,
      surveyId: fields[1] as String,
      answers: (fields[2] as List).cast<AnswerHiveModel>(),
      lastAnsweredQuestionId: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, SurveyResponseHiveModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.surveyId)
      ..writeByte(2)
      ..write(obj.answers)
      ..writeByte(3)
      ..write(obj.lastAnsweredQuestionId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SurveyResponseHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
