import 'package:artifitia_quiz_app/features/quiz/domain/entities/question_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_provider_state.freezed.dart';

@freezed
class QuizProviderState with _$QuizProviderState {
  factory QuizProviderState({
    List<QuestionEntity>? questions,
    required int currentQuestion,
    required int timer,
    required bool isSelected,
    required int? selectedOption,
    required int answeredCount,
  }) = _QuizProviderState;
}
