import 'package:hive/hive.dart';
import 'package:survey_app/survey/data_sources/hive_models/question_hive_model.dart';
import 'package:survey_app/survey/survey.dart';

part 'survey_hive_model.g.dart';

@HiveType(typeId: 0)
class SurveyHiveModel extends HiveObject {
  SurveyHiveModel({
    required this.id,
    required this.start_question_id,
    required this.questions,
    required this.strings,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String start_question_id;

  @HiveField(2)
  final List<QuestionHiveModel> questions;

  @HiveField(3)
  final Map<String, Map<String, Object?>?> strings;
}
