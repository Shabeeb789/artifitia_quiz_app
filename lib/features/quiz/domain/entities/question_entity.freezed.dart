// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionEntity {
  String get id => throw _privateConstructorUsedError;
  String get questionTxt => throw _privateConstructorUsedError;
  List<OptionEntity> get options => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionEntityCopyWith<QuestionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionEntityCopyWith<$Res> {
  factory $QuestionEntityCopyWith(
          QuestionEntity value, $Res Function(QuestionEntity) then) =
      _$QuestionEntityCopyWithImpl<$Res, QuestionEntity>;
  @useResult
  $Res call({String id, String questionTxt, List<OptionEntity> options});
}

/// @nodoc
class _$QuestionEntityCopyWithImpl<$Res, $Val extends QuestionEntity>
    implements $QuestionEntityCopyWith<$Res> {
  _$QuestionEntityCopyWithImpl(this._value, this._then);

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
              as List<OptionEntity>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionEntityImplCopyWith<$Res>
    implements $QuestionEntityCopyWith<$Res> {
  factory _$$QuestionEntityImplCopyWith(_$QuestionEntityImpl value,
          $Res Function(_$QuestionEntityImpl) then) =
      __$$QuestionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String questionTxt, List<OptionEntity> options});
}

/// @nodoc
class __$$QuestionEntityImplCopyWithImpl<$Res>
    extends _$QuestionEntityCopyWithImpl<$Res, _$QuestionEntityImpl>
    implements _$$QuestionEntityImplCopyWith<$Res> {
  __$$QuestionEntityImplCopyWithImpl(
      _$QuestionEntityImpl _value, $Res Function(_$QuestionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? questionTxt = null,
    Object? options = null,
  }) {
    return _then(_$QuestionEntityImpl(
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
              as List<OptionEntity>,
    ));
  }
}

/// @nodoc

class _$QuestionEntityImpl implements _QuestionEntity {
  _$QuestionEntityImpl(
      {required this.id,
      required this.questionTxt,
      required final List<OptionEntity> options})
      : _options = options;

  @override
  final String id;
  @override
  final String questionTxt;
  final List<OptionEntity> _options;
  @override
  List<OptionEntity> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'QuestionEntity(id: $id, questionTxt: $questionTxt, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionEntityImpl &&
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
  _$$QuestionEntityImplCopyWith<_$QuestionEntityImpl> get copyWith =>
      __$$QuestionEntityImplCopyWithImpl<_$QuestionEntityImpl>(
          this, _$identity);
}

abstract class _QuestionEntity implements QuestionEntity {
  factory _QuestionEntity(
      {required final String id,
      required final String questionTxt,
      required final List<OptionEntity> options}) = _$QuestionEntityImpl;

  @override
  String get id;
  @override
  String get questionTxt;
  @override
  List<OptionEntity> get options;
  @override
  @JsonKey(ignore: true)
  _$$QuestionEntityImplCopyWith<_$QuestionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
