import 'package:artifitia_quiz_app/features/quiz/domain/entities/option_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_entity.freezed.dart';

@freezed
class QuestionEntity with _$QuestionEntity {
  factory QuestionEntity({
    required String id,
    required String questionTxt,
    required List<OptionEntity> options,
  }) = _QuestionEntity;
}
