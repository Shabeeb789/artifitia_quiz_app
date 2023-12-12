import 'package:artifitia_quiz_app/core/theme/theme_helper.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/providers/quiz_provider.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/widgets/question_empty/question_empty_widget.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/widgets/question_loading/question_loading_widget.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/widgets/questions_list/questions_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuizPage extends ConsumerWidget {
  static const routePath = '/quiz';
  static const routeName = 'Quiz';

  const QuizPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final questions = ref.watch(quizProvider).questions;

    return Scaffold(
      backgroundColor: AppTheme.of(context).colors.primary,
      body: Builder(builder: (context) {
        if (questions == null) {
          return const QuestionsLoadingWidget();
        }

        if (questions.isEmpty) {
          return const QuestionEmptyWidget();
        }

        return const QuestionsListWidget();
      }),
    );
  }
}
