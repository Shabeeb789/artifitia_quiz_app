import 'package:freezed_annotation/freezed_annotation.dart';

part 'option_model.freezed.dart';

@freezed
class OptionModel with _$OptionModel {
  factory OptionModel({
    required String id,
    required String optionTxt,
    required bool isCorrect,
  }) = _OptionModel;
}
