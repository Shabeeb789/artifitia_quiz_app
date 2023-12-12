import 'package:artifitia_quiz_app/core/constants/assets/assets_constants.dart';
import 'package:artifitia_quiz_app/core/theme/theme_helper.dart';
import 'package:artifitia_quiz_app/features/home/presentation/pages/home_page.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/pages/quiz_page.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/providers/quiz_provider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ResultPage extends ConsumerWidget {
  static const routePath = '/result';
  static const routeName = 'Result';
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int persentage = ((ref.watch(quizProvider).answeredCount /
                ref.watch(quizProvider).questions!.length) *
            100)
        .toInt();
    return Scaffold(
      backgroundColor: AppTheme.of(context).colors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 42),
              decoration: BoxDecoration(
                color: AppTheme.of(context).colors.txtInverse,
                borderRadius: BorderRadius.circular(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ref.watch(appAssetsProvider).imgCongratulation),
                  const SizedBox(height: 8),
                  Text(
                    "$persentage% Score",
                    style: TextStyle(
                      fontSize: 24,
                      color: persentage > 50 ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("Quiz completed successfully..!"),
                  const SizedBox(height: 8),
                  SizedBox(
                    width: 200,
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: "You attempt ",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        children: [
                          TextSpan(
                              text:
                                  "${ref.watch(quizProvider).questions!.length} Questions",
                              style: const TextStyle(color: Colors.red)),
                          const TextSpan(text: " and from that "),
                          TextSpan(
                              text:
                                  "${ref.watch(quizProvider).answeredCount} answer",
                              style: const TextStyle(color: Colors.green)),
                          const TextSpan(text: " is correct."),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                ref.read(quizProvider.notifier).resetAll();
                persentage > 50
                    ? context.go(HomePage.routePath)
                    : context.go(QuizPage.routePath);
              },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.all(20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                foregroundColor: Colors.white,
                backgroundColor: persentage > 50 ? Colors.green : Colors.red,
              ),
              child: Text(persentage > 50 ? "Back..!" : "Try Again..!"),
            ),
          ],
        ),
      ),
    );
  }
}
