// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_provider_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuizProviderState {
  List<QuestionEntity>? get questions => throw _privateConstructorUsedError;
  int get currentQuestion => throw _privateConstructorUsedError;
  int get timer => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;
  int? get selectedOption => throw _privateConstructorUsedError;
  int get answeredCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuizProviderStateCopyWith<QuizProviderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizProviderStateCopyWith<$Res> {
  factory $QuizProviderStateCopyWith(
          QuizProviderState value, $Res Function(QuizProviderState) then) =
      _$QuizProviderStateCopyWithImpl<$Res, QuizProviderState>;
  @useResult
  $Res call(
      {List<QuestionEntity>? questions,
      int currentQuestion,
      int timer,
      bool isSelected,
      int? selectedOption,
      int answeredCount});
}

/// @nodoc
class _$QuizProviderStateCopyWithImpl<$Res, $Val extends QuizProviderState>
    implements $QuizProviderStateCopyWith<$Res> {
  _$QuizProviderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = freezed,
    Object? currentQuestion = null,
    Object? timer = null,
    Object? isSelected = null,
    Object? selectedOption = freezed,
    Object? answeredCount = null,
  }) {
    return _then(_value.copyWith(
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>?,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOption: freezed == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as int?,
      answeredCount: null == answeredCount
          ? _value.answeredCount
          : answeredCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizProviderStateImplCopyWith<$Res>
    implements $QuizProviderStateCopyWith<$Res> {
  factory _$$QuizProviderStateImplCopyWith(_$QuizProviderStateImpl value,
          $Res Function(_$QuizProviderStateImpl) then) =
      __$$QuizProviderStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuestionEntity>? questions,
      int currentQuestion,
      int timer,
      bool isSelected,
      int? selectedOption,
      int answeredCount});
}

/// @nodoc
class __$$QuizProviderStateImplCopyWithImpl<$Res>
    extends _$QuizProviderStateCopyWithImpl<$Res, _$QuizProviderStateImpl>
    implements _$$QuizProviderStateImplCopyWith<$Res> {
  __$$QuizProviderStateImplCopyWithImpl(_$QuizProviderStateImpl _value,
      $Res Function(_$QuizProviderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? questions = freezed,
    Object? currentQuestion = null,
    Object? timer = null,
    Object? isSelected = null,
    Object? selectedOption = freezed,
    Object? answeredCount = null,
  }) {
    return _then(_$QuizProviderStateImpl(
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<QuestionEntity>?,
      currentQuestion: null == currentQuestion
          ? _value.currentQuestion
          : currentQuestion // ignore: cast_nullable_to_non_nullable
              as int,
      timer: null == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as int,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedOption: freezed == selectedOption
          ? _value.selectedOption
          : selectedOption // ignore: cast_nullable_to_non_nullable
              as int?,
      answeredCount: null == answeredCount
          ? _value.answeredCount
          : answeredCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuizProviderStateImpl implements _QuizProviderState {
  _$QuizProviderStateImpl(
      {final List<QuestionEntity>? questions,
      required this.currentQuestion,
      required this.timer,
      required this.isSelected,
      required this.selectedOption,
      required this.answeredCount})
      : _questions = questions;

  final List<QuestionEntity>? _questions;
  @override
  List<QuestionEntity>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int currentQuestion;
  @override
  final int timer;
  @override
  final bool isSelected;
  @override
  final int? selectedOption;
  @override
  final int answeredCount;

  @override
  String toString() {
    return 'QuizProviderState(questions: $questions, currentQuestion: $currentQuestion, timer: $timer, isSelected: $isSelected, selectedOption: $selectedOption, answeredCount: $answeredCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizProviderStateImpl &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            (identical(other.currentQuestion, currentQuestion) ||
                other.currentQuestion == currentQuestion) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected) &&
            (identical(other.selectedOption, selectedOption) ||
                other.selectedOption == selectedOption) &&
            (identical(other.answeredCount, answeredCount) ||
                other.answeredCount == answeredCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_questions),
      currentQuestion,
      timer,
      isSelected,
      selectedOption,
      answeredCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizProviderStateImplCopyWith<_$QuizProviderStateImpl> get copyWith =>
      __$$QuizProviderStateImplCopyWithImpl<_$QuizProviderStateImpl>(
          this, _$identity);
}

abstract class _QuizProviderState implements QuizProviderState {
  factory _QuizProviderState(
      {final List<QuestionEntity>? questions,
      required final int currentQuestion,
      required final int timer,
      required final bool isSelected,
      required final int? selectedOption,
      required final int answeredCount}) = _$QuizProviderStateImpl;

  @override
  List<QuestionEntity>? get questions;
  @override
  int get currentQuestion;
  @override
  int get timer;
  @override
  bool get isSelected;
  @override
  int? get selectedOption;
  @override
  int get answeredCount;
  @override
  @JsonKey(ignore: true)
  _$$QuizProviderStateImplCopyWith<_$QuizProviderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
