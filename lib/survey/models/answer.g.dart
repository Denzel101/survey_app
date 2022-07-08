// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Answer _$$_AnswerFromJson(Map<String, dynamic> json) => _$_Answer(
      id: json['id'] as String,
      questionId: json['questionId'] as String,
      value: json['value'] as String,
      answerTime: DateTime.parse(json['answerTime'] as String),
    );

Map<String, dynamic> _$$_AnswerToJson(_$_Answer instance) => <String, dynamic>{
      'id': instance.id,
      'questionId': instance.questionId,
      'value': instance.value,
      'answerTime': instance.answerTime.toIso8601String(),
    };
