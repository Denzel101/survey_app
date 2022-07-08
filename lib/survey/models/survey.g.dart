// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Survey _$$_SurveyFromJson(Map<String, dynamic> json) => _$_Survey(
      id: json['id'] as String,
      start_question_id: json['start_question_id'] as String,
      questions: (json['questions'] as List<dynamic>)
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList(),
      strings: (json['strings'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(k, e as Map<String, dynamic>?),
      ),
    );

Map<String, dynamic> _$$_SurveyToJson(_$_Survey instance) => <String, dynamic>{
      'id': instance.id,
      'start_question_id': instance.start_question_id,
      'questions': instance.questions.map((e) => e.toJson()).toList(),
      'strings': instance.strings,
    };
