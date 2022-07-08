import 'package:hive/hive.dart';
import 'package:survey_app/survey/survey.dart';

part 'survey_response_hive_model.g.dart';

@HiveType(typeId: 4)
class SurveyResponseHiveModel extends HiveObject {
  SurveyResponseHiveModel({
    required this.id,
    required this.surveyId,
    required this.answers,
    this.lastAnsweredQuestionId,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String surveyId;

  @HiveField(2)
  final List<AnswerHiveModel> answers;

  @HiveField(3)
  final String? lastAnsweredQuestionId;
}
