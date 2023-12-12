import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_entity.freezed.dart';

@freezed
class OptionEntity with _$OptionEntity {
  factory OptionEntity({
    required String id,
    required String optionTxt,
    required bool isCorrect,
  }) = _OptionEntity;
}
