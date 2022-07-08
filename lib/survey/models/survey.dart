import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:survey_app/survey/models/question.dart';

part 'survey.freezed.dart';
part 'survey.g.dart';

@freezed
class Survey with _$Survey {
  const factory Survey({
    required String id,
    required String start_question_id,
    required List<Question> questions,
    required Map<String, Map<String, Object?>?> strings,
  }) = _Survey;

  factory Survey.fromJson(Map<String, Object?> json) => _$SurveyFromJson(json);
}
