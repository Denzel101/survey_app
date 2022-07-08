part of 'survey_cubit.dart';

@freezed
class SurveyState with _$SurveyState {
  const factory SurveyState.noSurvey() = _NoSurvey;
  const factory SurveyState.loading() = _Loading;
  const factory SurveyState.loaded({required Survey survey}) = _Loaded;
  const factory SurveyState.error({required String error}) = _Error;
}
