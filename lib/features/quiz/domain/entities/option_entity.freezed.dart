// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'option_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OptionEntity {
  String get id => throw _privateConstructorUsedError;
  String get optionTxt => throw _privateConstructorUsedError;
  bool get isCorrect => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OptionEntityCopyWith<OptionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionEntityCopyWith<$Res> {
  factory $OptionEntityCopyWith(
          OptionEntity value, $Res Function(OptionEntity) then) =
      _$OptionEntityCopyWithImpl<$Res, OptionEntity>;
  @useResult
  $Res call({String id, String optionTxt, bool isCorrect});
}

/// @nodoc
class _$OptionEntityCopyWithImpl<$Res, $Val extends OptionEntity>
    implements $OptionEntityCopyWith<$Res> {
  _$OptionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? optionTxt = null,
    Object? isCorrect = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      optionTxt: null == optionTxt
          ? _value.optionTxt
          : optionTxt // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OptionEntityImplCopyWith<$Res>
    implements $OptionEntityCopyWith<$Res> {
  factory _$$OptionEntityImplCopyWith(
          _$OptionEntityImpl value, $Res Function(_$OptionEntityImpl) then) =
      __$$OptionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String optionTxt, bool isCorrect});
}

/// @nodoc
class __$$OptionEntityImplCopyWithImpl<$Res>
    extends _$OptionEntityCopyWithImpl<$Res, _$OptionEntityImpl>
    implements _$$OptionEntityImplCopyWith<$Res> {
  __$$OptionEntityImplCopyWithImpl(
      _$OptionEntityImpl _value, $Res Function(_$OptionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? optionTxt = null,
    Object? isCorrect = null,
  }) {
    return _then(_$OptionEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      optionTxt: null == optionTxt
          ? _value.optionTxt
          : optionTxt // ignore: cast_nullable_to_non_nullable
              as String,
      isCorrect: null == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$OptionEntityImpl implements _OptionEntity {
  _$OptionEntityImpl(
      {required this.id, required this.optionTxt, required this.isCorrect});

  @override
  final String id;
  @override
  final String optionTxt;
  @override
  final bool isCorrect;

  @override
  String toString() {
    return 'OptionEntity(id: $id, optionTxt: $optionTxt, isCorrect: $isCorrect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OptionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.optionTxt, optionTxt) ||
                other.optionTxt == optionTxt) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, optionTxt, isCorrect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OptionEntityImplCopyWith<_$OptionEntityImpl> get copyWith =>
      __$$OptionEntityImplCopyWithImpl<_$OptionEntityImpl>(this, _$identity);
}

abstract class _OptionEntity implements OptionEntity {
  factory _OptionEntity(
      {required final String id,
      required final String optionTxt,
      required final bool isCorrect}) = _$OptionEntityImpl;

  @override
  String get id;
  @override
  String get optionTxt;
  @override
  bool get isCorrect;
  @override
  @JsonKey(ignore: true)
  _$$OptionEntityImplCopyWith<_$OptionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
