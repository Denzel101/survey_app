import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:survey_app/survey/models/survey.dart';
import 'package:survey_app/survey/repository/survey_repository.dart';

part 'survey_state.dart';
part 'survey_cubit.freezed.dart';

class SurveyCubit extends Cubit<SurveyState> {
  SurveyCubit({required SurveyRepository surveyRepository})
      : _surveyRepository = surveyRepository,
        super(const SurveyState.noSurvey());

  final SurveyRepository _surveyRepository;

  Future<void> fetchSurvey() async {
    emit(const SurveyState.loading());
    try {
      final survey = await _surveyRepository.fetchSurvey();
      emit(SurveyState.loaded(survey: survey));
    } catch (error) {
      emit(SurveyState.error(error: error.toString()));
    }
  }
}
