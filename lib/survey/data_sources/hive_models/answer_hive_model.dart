import 'package:hive/hive.dart';

part 'answer_hive_model.g.dart';

@HiveType(typeId: 3)
class AnswerHiveModel extends HiveObject {
  AnswerHiveModel({
    required this.id,
    required this.questionId,
    required this.value,
    required this.responseTime,
  });

  @HiveField(0)
  final String id;

  @HiveField(1)
  final String questionId;

  @HiveField(2)
  final String value;

  @HiveField(3)
  final DateTime responseTime;
}
