import 'package:survey_app/survey/data_sources/data_sources.dart';
import 'package:survey_app/survey/models/models.dart';

class SurveyRepository {
  SurveyRepository({
    required APIDataSource apiDataSource,
    required LocalDataSource localDataSource,
  })  : _apiDataSource = apiDataSource,
        _localDataSource = localDataSource;

  final APIDataSource _apiDataSource;
  final LocalDataSource _localDataSource;

  Future<Survey> fetchSurvey() async {
    var survey = await _localDataSource.fetchSurvey();
    if (survey != null) {
      return survey;
    }

    survey = await _apiDataSource.fetchSurvey();
    await _localDataSource.saveSurvey(survey);
    return survey;
  }

  Future<SurveyResponse?> fetchResponse() async {
    return _localDataSource.fetchResponse();
  }

  Future<bool?> saveResponse({
    required SurveyResponse response,
  }) async {
    return _localDataSource.saveResponse(response: response);
  }
}
