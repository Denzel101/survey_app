import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:survey_app/survey/repository/background_service_repository.dart';
import 'package:survey_app/survey/survey.dart';

Future<SurveyRepository> initSurveyRepository() async {
  // final backgroundServiceRepository = BackgroundServiceRepository();
  // await backgroundServiceRepository.initializeService();
  await Hive.initFlutter();
  Hive
    ..registerAdapter(SurveyHiveModelAdapter())
    ..registerAdapter(QuestionHiveModelAdapter())
    ..registerAdapter(OptionHiveModelAdapter())
    ..registerAdapter(SurveyResponseHiveModelAdapter())
    ..registerAdapter(AnswerHiveModelAdapter());

  final surveyBox = await Hive.openBox<SurveyHiveModel?>('surveys');
  final responseBox = await Hive.openBox<SurveyResponseHiveModel?>('responses');
  final localDataSource = LocalDataSource(
    surveyBox: surveyBox,
    responseBox: responseBox,
  );
  final apiDataSource = APIDataSource(httpClient: http.Client());

  return SurveyRepository(
    apiDataSource: apiDataSource,
    localDataSource: localDataSource,
  );
}
