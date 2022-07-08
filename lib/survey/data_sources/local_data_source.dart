import 'dart:developer';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:survey_app/survey/models/survey_response.dart';
import 'package:survey_app/survey/survey.dart';

class LocalDataSource {
  LocalDataSource({
    required Box<SurveyHiveModel?> surveyBox,
    required Box<SurveyResponseHiveModel?> responseBox,
  })  : _surveyBox = surveyBox,
        _responseBox = responseBox;

  final Box<SurveyHiveModel?> _surveyBox;
  final Box<SurveyResponseHiveModel?> _responseBox;
  static const _surveyKey = 'survey';
  static const _responseKey = 'responseKey';

  Future<bool> saveSurvey(Survey survey) async {
    final surveyModel = SurveyHiveModel(
      id: survey.id,
      start_question_id: survey.start_question_id,
      questions: survey.questions
          .map(
            (question) => QuestionHiveModel(
              id: question.id,
              question_type: question.question_type,
              answer_type: question.answer_type,
              question_text: question.question_text,
              options: question.options
                  .map(
                    (option) => OptionHiveModel(
                      value: option.value,
                      display_text: option.display_text,
                    ),
                  )
                  .toList(),
              next: question.next,
            ),
          )
          .toList(),
      strings: survey.strings,
    );

    try {
      await _surveyBox.put(_surveyKey, surveyModel);
      return true;
    } on Exception catch (e) {
      log(e.toString());
    }
    return false;
  }

  Future<Survey?> fetchSurvey() async {
    final surveyModel = _surveyBox.get(_surveyKey);
    if (surveyModel == null) {
      return null;
    }
    return Survey(
      id: surveyModel.id,
      start_question_id: surveyModel.start_question_id,
      questions: surveyModel.questions
          .map(
            (question) => Question(
              id: question.id,
              question_type: question.question_type,
              answer_type: question.answer_type,
              question_text: question.question_text,
              next: question.next,
              options: question.options
                  .map(
                    (option) => Option(
                      value: option.value,
                      display_text: option.display_text,
                    ),
                  )
                  .toList(),
            ),
          )
          .toList(),
      strings: surveyModel.strings,
    );
  }

  Future<SurveyResponse?> fetchResponse() async {
    final responseModel = _responseBox.get(_responseKey);
    if (responseModel == null) {
      return null;
    }

    return SurveyResponse(
      id: responseModel.id,
      surveyId: responseModel.surveyId,
      lastAnsweredQuestionId: responseModel.lastAnsweredQuestionId,
      answers: responseModel.answers
          .map(
            (answer) => Answer(
              id: answer.id,
              questionId: answer.questionId,
              value: answer.value,
              answerTime: answer.responseTime,
            ),
          )
          .toList(),
    );
  }

  Future<bool> saveResponse({required SurveyResponse response}) async {
    final responseModel = SurveyResponseHiveModel(
      id: response.id,
      surveyId: response.surveyId,
      lastAnsweredQuestionId: response.lastAnsweredQuestionId,
      answers: response.answers
          .map(
            (answer) => AnswerHiveModel(
              id: answer.id,
              questionId: answer.questionId,
              value: answer.value,
              responseTime: answer.answerTime,
            ),
          )
          .toList(),
    );

    try {
      await _responseBox.put(_responseKey, responseModel);
      return true;
    } on Exception catch (e) {
      log(e.toString());
    }
    return false;
  }
}
