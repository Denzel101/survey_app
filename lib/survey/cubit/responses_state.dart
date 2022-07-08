part of 'responses_cubit.dart';

@freezed
class ResponsesState with _$ResponsesState {
  const factory ResponsesState.loading() = Initial;
  const factory ResponsesState.loaded({
    required SurveyResponse? response,
  }) = Loaded;
  const factory ResponsesState.error({
    required String error,
  }) = Error;
}
