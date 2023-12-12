// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionModel {
  String get id => throw _privateConstructorUsedError;
  String get questionTxt => throw _privateConstructorUsedError;
  List<OptionModel> get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionModelCopyWith<QuestionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionModelCopyWith<$Res> {
  factory $QuestionModelCopyWith(
          QuestionModel value, $Res Function(QuestionModel) then) =
      _$QuestionModelCopyWithImpl<$Res, QuestionModel>;
  @useResult
  $Res call({String id, String questionTxt, List<OptionModel> options});
}

/// @nodoc
class _$QuestionModelCopyWithImpl<$Res, $Val extends QuestionModel>
    implements $QuestionModelCopyWith<$Res> {
  _$QuestionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionTxt = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionTxt: null == questionTxt
          ? _value.questionTxt
          : questionTxt // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionModelImplCopyWith<$Res>
    implements $QuestionModelCopyWith<$Res> {
  factory _$$QuestionModelImplCopyWith(
          _$QuestionModelImpl value, $Res Function(_$QuestionModelImpl) then) =
      __$$QuestionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String questionTxt, List<OptionModel> options});
}

/// @nodoc
class __$$QuestionModelImplCopyWithImpl<$Res>
    extends _$QuestionModelCopyWithImpl<$Res, _$QuestionModelImpl>
    implements _$$QuestionModelImplCopyWith<$Res> {
  __$$QuestionModelImplCopyWithImpl(
      _$QuestionModelImpl _value, $Res Function(_$QuestionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionTxt = null,
    Object? options = null,
  }) {
    return _then(_$QuestionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      questionTxt: null == questionTxt
          ? _value.questionTxt
          : questionTxt // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionModel>,
    ));
  }
}

/// @nodoc

class _$QuestionModelImpl implements _QuestionModel {
  _$QuestionModelImpl(
      {required this.id,
      required this.questionTxt,
      required final List<OptionModel> options})
      : _options = options;

  @override
  final String id;
  @override
  final String questionTxt;
  final List<OptionModel> _options;
  @override
  List<OptionModel> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'QuestionModel(id: $id, questionTxt: $questionTxt, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.questionTxt, questionTxt) ||
                other.questionTxt == questionTxt) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, questionTxt,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      __$$QuestionModelImplCopyWithImpl<_$QuestionModelImpl>(this, _$identity);
}

abstract class _QuestionModel implements QuestionModel {
  factory _QuestionModel(
      {required final String id,
      required final String questionTxt,
      required final List<OptionModel> options}) = _$QuestionModelImpl;

  @override
  String get id;
  @override
  String get questionTxt;
  @override
  List<OptionModel> get options;
  @override
  @JsonKey(ignore: true)
  _$$QuestionModelImplCopyWith<_$QuestionModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
