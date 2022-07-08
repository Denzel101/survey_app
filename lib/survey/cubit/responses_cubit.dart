import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:survey_app/survey/models/models.dart';
import 'package:survey_app/survey/repository/survey_repository.dart';

part 'responses_state.dart';
part 'responses_cubit.freezed.dart';

class ResponsesCubit extends Cubit<ResponsesState> {
  ResponsesCubit({required SurveyRepository surveyRepository})
      : _surveyRepository = surveyRepository,
        super(const ResponsesState.loaded(response: null));

  final SurveyRepository _surveyRepository;

  Future<void> fetchResponse() async {
    emit(const ResponsesState.loading());
    try {
      final response = await _surveyRepository.fetchResponse();
      emit(ResponsesState.loaded(response: response));
    } catch (e) {
      emit(ResponsesState.error(error: e.toString()));
    }
  }

  Future<void> saveResponse({required SurveyResponse response}) async {
    emit(const ResponsesState.loading());
    try {
      await _surveyRepository.saveResponse(response: response);
      emit(ResponsesState.loaded(response: response));
    } catch (e) {
      emit(ResponsesState.error(error: e.toString()));
    }
  }
}
