import 'package:artifitia_quiz_app/features/quiz/data/models/option_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.freezed.dart';

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    required String id,
    required String questionTxt,
    required List<OptionModel> options,
  }) = _QuestionModel;
}
