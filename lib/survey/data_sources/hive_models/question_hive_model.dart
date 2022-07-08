import 'package:hive/hive.dart';

import 'package:survey_app/survey/data_sources/hive_models/option_hive_model.dart';

part 'question_hive_model.g.dart';

@HiveType(typeId: 1)
class QuestionHiveModel extends HiveObject {
  QuestionHiveModel({
    required this.id,
    required this.question_type,
    required this.answer_type,
    required this.question_text,
    required this.options,
    required this.next,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String question_type;

  @HiveField(2)
  final String answer_type;

  @HiveField(3)
  final String question_text;

  @HiveField(4)
  final List<OptionHiveModel> options;

  @HiveField(5)
  final String? next;
}
