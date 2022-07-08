// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Question _$$_QuestionFromJson(Map<String, dynamic> json) => _$_Question(
      id: json['id'] as String,
      question_type: json['question_type'] as String,
      answer_type: json['answer_type'] as String,
      question_text: json['question_text'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Option.fromJson(e as Map<String, dynamic>))
          .toList(),
      next: json['next'] as String?,
    );

Map<String, dynamic> _$$_QuestionToJson(_$_Question instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question_type': instance.question_type,
      'answer_type': instance.answer_type,
      'question_text': instance.question_text,
      'options': instance.options.map((e) => e.toJson()).toList(),
      'next': instance.next,
    };
