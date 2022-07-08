// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Survey _$SurveyFromJson(Map<String, dynamic> json) {
  return _Survey.fromJson(json);
}

/// @nodoc
mixin _$Survey {
  String get id => throw _privateConstructorUsedError;
  String get start_question_id => throw _privateConstructorUsedError;
  List<Question> get questions => throw _privateConstructorUsedError;
  Map<String, Map<String, Object?>?> get strings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyCopyWith<Survey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyCopyWith<$Res> {
  factory $SurveyCopyWith(Survey value, $Res Function(Survey) then) =
      _$SurveyCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String start_question_id,
      List<Question> questions,
      Map<String, Map<String, Object?>?> strings});
}

/// @nodoc
class _$SurveyCopyWithImpl<$Res> implements $SurveyCopyWith<$Res> {
  _$SurveyCopyWithImpl(this._value, this._then);

  final Survey _value;
  // ignore: unused_field
  final $Res Function(Survey) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? start_question_id = freezed,
    Object? questions = freezed,
    Object? strings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start_question_id: start_question_id == freezed
          ? _value.start_question_id
          : start_question_id // ignore: cast_nullable_to_non_nullable
              as String,
      questions: questions == freezed
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      strings: strings == freezed
          ? _value.strings
          : strings // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, Object?>?>,
    ));
  }
}

/// @nodoc
abstract class _$$_SurveyCopyWith<$Res> implements $SurveyCopyWith<$Res> {
  factory _$$_SurveyCopyWith(_$_Survey value, $Res Function(_$_Survey) then) =
      __$$_SurveyCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String start_question_id,
      List<Question> questions,
      Map<String, Map<String, Object?>?> strings});
}

/// @nodoc
class __$$_SurveyCopyWithImpl<$Res> extends _$SurveyCopyWithImpl<$Res>
    implements _$$_SurveyCopyWith<$Res> {
  __$$_SurveyCopyWithImpl(_$_Survey _value, $Res Function(_$_Survey) _then)
      : super(_value, (v) => _then(v as _$_Survey));

  @override
  _$_Survey get _value => super._value as _$_Survey;

  @override
  $Res call({
    Object? id = freezed,
    Object? start_question_id = freezed,
    Object? questions = freezed,
    Object? strings = freezed,
  }) {
    return _then(_$_Survey(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      start_question_id: start_question_id == freezed
          ? _value.start_question_id
          : start_question_id // ignore: cast_nullable_to_non_nullable
              as String,
      questions: questions == freezed
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      strings: strings == freezed
          ? _value._strings
          : strings // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, Object?>?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Survey implements _Survey {
  const _$_Survey(
      {required this.id,
      required this.start_question_id,
      required final List<Question> questions,
      required final Map<String, Map<String, Object?>?> strings})
      : _questions = questions,
        _strings = strings;

  factory _$_Survey.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyFromJson(json);

  @override
  final String id;
  @override
  final String start_question_id;
  final List<Question> _questions;
  @override
  List<Question> get questions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final Map<String, Map<String, Object?>?> _strings;
  @override
  Map<String, Map<String, Object?>?> get strings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_strings);
  }

  @override
  String toString() {
    return 'Survey(id: $id, start_question_id: $start_question_id, questions: $questions, strings: $strings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Survey &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.start_question_id, start_question_id) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality().equals(other._strings, _strings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(start_question_id),
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_strings));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyCopyWith<_$_Survey> get copyWith =>
      __$$_SurveyCopyWithImpl<_$_Survey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyToJson(this);
  }
}

abstract class _Survey implements Survey {
  const factory _Survey(
      {required final String id,
      required final String start_question_id,
      required final List<Question> questions,
      required final Map<String, Map<String, Object?>?> strings}) = _$_Survey;

  factory _Survey.fromJson(Map<String, dynamic> json) = _$_Survey.fromJson;

  @override
  String get id;
  @override
  String get start_question_id;
  @override
  List<Question> get questions;
  @override
  Map<String, Map<String, Object?>?> get strings;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyCopyWith<_$_Survey> get copyWith =>
      throw _privateConstructorUsedError;
}
