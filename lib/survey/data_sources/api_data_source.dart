import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:survey_app/survey/models/models.dart';

class APIDataSource {
  APIDataSource({required http.Client httpClient})
      : _httpClient = httpClient;

  final http.Client _httpClient;
  static const _url =
      'https://run.mocky.io/v3/d628facc-ec18-431d-a8fc-9c096e00709a';

  Future<Survey> fetchSurvey() async {
    final response = await _httpClient.get(Uri.parse(_url));
    final responseBody = response.body;
    final surveyJson = jsonDecode(responseBody) as Map<String, dynamic>;
    final survey = Survey.fromJson(surveyJson);
    return survey;
  }
}
