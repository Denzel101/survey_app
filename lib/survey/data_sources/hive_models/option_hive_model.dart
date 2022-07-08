import 'package:hive/hive.dart';

part 'option_hive_model.g.dart';

@HiveType(typeId: 2)
class OptionHiveModel extends HiveObject {
  @HiveField(0)
  final String value;

  @HiveField(1)
  final String display_text;

  OptionHiveModel({
    required this.value,
    required this.display_text,
  });
}
