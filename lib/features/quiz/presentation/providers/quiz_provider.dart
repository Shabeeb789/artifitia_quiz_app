import 'dart:async';

import 'package:artifitia_quiz_app/features/quiz/data/repository/quiz_repository_impl.dart';
import 'package:artifitia_quiz_app/features/quiz/domain/repository/quiz_repository.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/providers/quiz_provider_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'quiz_provider.g.dart';

@riverpod
class Quiz extends _$Quiz {
  static const int _maxTimer = 60;
  late final QuizRepository repository;
  late Timer timer;

  @override
  QuizProviderState build() {
    repository = ref.read(quizRepositoryProvider);
    getQuestions();

    return QuizProviderState(
      questions: null,
      currentQuestion: 0,
      timer: _maxTimer,
      isSelected: false,
      selectedOption: null,
      answeredCount: 0,
    );
  }

  /// Get questions from API
  Future<void> getQuestions() async {
    final questions = await repository.getQuestions();
    state = state.copyWith(questions: questions);
  }

  /// Start timer
  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      state = state.copyWith(timer: state.timer - 1);
      if (state.timer == 0) {
        timer.cancel();
      }
    });
  }

  /// stop timer
  void stopTimer() {
    timer.cancel();
  }

  ///toggle isSelected
  void toggleIsSelected() {
    state = state.copyWith(isSelected: true);
  }

  void updateSelectedOption(int index) {
    state = state.copyWith(selectedOption: index);
  }

  void nextQuestion() {
    state = state.copyWith(
      currentQuestion: state.currentQuestion + 1,
      timer: _maxTimer,
      isSelected: false,
      selectedOption: null,
    );
    startTimer();
  }

  void resetAll() {
    state = state.copyWith(
      currentQuestion: 0,
      timer: _maxTimer,
      isSelected: false,
      selectedOption: null,
      answeredCount: 0,
    );
  }

  //

  // get correctly answered count
  void incrementAsweredCount() {
    state = state.copyWith(answeredCount: state.answeredCount + 1);
  }
}
