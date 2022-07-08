import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:survey_app/survey/models/option.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    required String id,
    required String question_type,
    required String answer_type,
    required String question_text,
    required List<Option> options,
    String? next,
  }) = _Question;

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}
