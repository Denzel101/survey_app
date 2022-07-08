// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyResponse _$SurveyResponseFromJson(Map<String, dynamic> json) {
  return _SurveyResponse.fromJson(json);
}

/// @nodoc
mixin _$SurveyResponse {
  String get id => throw _privateConstructorUsedError;
  String get surveyId => throw _privateConstructorUsedError;
  List<Answer> get answers => throw _privateConstructorUsedError;
  String? get lastAnsweredQuestionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyResponseCopyWith<SurveyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyResponseCopyWith<$Res> {
  factory $SurveyResponseCopyWith(
          SurveyResponse value, $Res Function(SurveyResponse) then) =
      _$SurveyResponseCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String surveyId,
      List<Answer> answers,
      String? lastAnsweredQuestionId});
}

/// @nodoc
class _$SurveyResponseCopyWithImpl<$Res>
    implements $SurveyResponseCopyWith<$Res> {
  _$SurveyResponseCopyWithImpl(this._value, this._then);

  final SurveyResponse _value;
  // ignore: unused_field
  final $Res Function(SurveyResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
    Object? answers = freezed,
    Object? lastAnsweredQuestionId = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value.answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      lastAnsweredQuestionId: lastAnsweredQuestionId == freezed
          ? _value.lastAnsweredQuestionId
          : lastAnsweredQuestionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SurveyResponseCopyWith<$Res>
    implements $SurveyResponseCopyWith<$Res> {
  factory _$$_SurveyResponseCopyWith(
          _$_SurveyResponse value, $Res Function(_$_SurveyResponse) then) =
      __$$_SurveyResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String surveyId,
      List<Answer> answers,
      String? lastAnsweredQuestionId});
}

/// @nodoc
class __$$_SurveyResponseCopyWithImpl<$Res>
    extends _$SurveyResponseCopyWithImpl<$Res>
    implements _$$_SurveyResponseCopyWith<$Res> {
  __$$_SurveyResponseCopyWithImpl(
      _$_SurveyResponse _value, $Res Function(_$_SurveyResponse) _then)
      : super(_value, (v) => _then(v as _$_SurveyResponse));

  @override
  _$_SurveyResponse get _value => super._value as _$_SurveyResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? surveyId = freezed,
    Object? answers = freezed,
    Object? lastAnsweredQuestionId = freezed,
  }) {
    return _then(_$_SurveyResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      surveyId: surveyId == freezed
          ? _value.surveyId
          : surveyId // ignore: cast_nullable_to_non_nullable
              as String,
      answers: answers == freezed
          ? _value._answers
          : answers // ignore: cast_nullable_to_non_nullable
              as List<Answer>,
      lastAnsweredQuestionId: lastAnsweredQuestionId == freezed
          ? _value.lastAnsweredQuestionId
          : lastAnsweredQuestionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurveyResponse implements _SurveyResponse {
  const _$_SurveyResponse(
      {required this.id,
      required this.surveyId,
      required final List<Answer> answers,
      this.lastAnsweredQuestionId})
      : _answers = answers;

  factory _$_SurveyResponse.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyResponseFromJson(json);

  @override
  final String id;
  @override
  final String surveyId;
  final List<Answer> _answers;
  @override
  List<Answer> get answers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answers);
  }

  @override
  final String? lastAnsweredQuestionId;

  @override
  String toString() {
    return 'SurveyResponse(id: $id, surveyId: $surveyId, answers: $answers, lastAnsweredQuestionId: $lastAnsweredQuestionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyResponse &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.surveyId, surveyId) &&
            const DeepCollectionEquality().equals(other._answers, _answers) &&
            const DeepCollectionEquality()
                .equals(other.lastAnsweredQuestionId, lastAnsweredQuestionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(surveyId),
      const DeepCollectionEquality().hash(_answers),
      const DeepCollectionEquality().hash(lastAnsweredQuestionId));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyResponseCopyWith<_$_SurveyResponse> get copyWith =>
      __$$_SurveyResponseCopyWithImpl<_$_SurveyResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyResponseToJson(this);
  }
}

abstract class _SurveyResponse implements SurveyResponse {
  const factory _SurveyResponse(
      {required final String id,
      required final String surveyId,
      required final List<Answer> answers,
      final String? lastAnsweredQuestionId}) = _$_SurveyResponse;

  factory _SurveyResponse.fromJson(Map<String, dynamic> json) =
      _$_SurveyResponse.fromJson;

  @override
  String get id;
  @override
  String get surveyId;
  @override
  List<Answer> get answers;
  @override
  String? get lastAnsweredQuestionId;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyResponseCopyWith<_$_SurveyResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
