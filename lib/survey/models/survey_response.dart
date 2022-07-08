import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey_app/survey/models/answer.dart';

part 'survey_response.freezed.dart';
part 'survey_response.g.dart';

@freezed
class SurveyResponse with _$SurveyResponse {
  const factory SurveyResponse({
    required String id,
    required String surveyId,
    required List<Answer> answers,
    String? lastAnsweredQuestionId,
  }) = _SurveyResponse;

  factory SurveyResponse.fromJson(Map<String, Object?> json) =>
      _$SurveyResponseFromJson(json);
}
