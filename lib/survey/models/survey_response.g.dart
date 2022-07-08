// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyResponse _$$_SurveyResponseFromJson(Map<String, dynamic> json) =>
    _$_SurveyResponse(
      id: json['id'] as String,
      surveyId: json['surveyId'] as String,
      answers: (json['answers'] as List<dynamic>)
          .map((e) => Answer.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastAnsweredQuestionId: json['lastAnsweredQuestionId'] as String?,
    );

Map<String, dynamic> _$$_SurveyResponseToJson(_$_SurveyResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'surveyId': instance.surveyId,
      'answers': instance.answers.map((e) => e.toJson()).toList(),
      'lastAnsweredQuestionId': instance.lastAnsweredQuestionId,
    };
