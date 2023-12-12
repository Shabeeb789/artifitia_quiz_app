import 'dart:math';

import 'package:artifitia_quiz_app/core/theme/theme_helper.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/providers/quiz_provider.dart';
import 'package:artifitia_quiz_app/features/result/presentation/pages/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class QuestionsListWidget extends HookConsumerWidget {
  const QuestionsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      ref.read(quizProvider.notifier).startTimer();

      return null;
    }, []);

    final currentQuestion =
        ref.watch(quizProvider.select((value) => value.currentQuestion));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Transform.rotate(
                angle: pi,
                child: LinearProgressIndicator(
                  value: (60 -
                          ref.watch(
                              quizProvider.select((value) => value.timer))) /
                      60,
                  minHeight: 28,
                  borderRadius: BorderRadius.circular(30),
                  backgroundColor: const Color(0xff6C2677),
                  color:
                      ref.watch(quizProvider.select((value) => value.timer)) <
                              10
                          ? Colors.red
                          : AppTheme.of(context).colors.progressFill,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    ref
                        .watch(quizProvider.select((value) => value.timer))
                        .toString(),
                    style: TextStyle(
                      color: AppTheme.of(context).colors.txtInverse,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 72),
          Text(
            ref.read(quizProvider).questions![currentQuestion].questionTxt,
            style: TextStyle(
              color: AppTheme.of(context).colors.txtInverse,
              fontSize: 24,
            ),
          ),
          ListView.separated(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(vertical: 24),
            itemCount: ref
                .watch(quizProvider.select((value) => value.questions))![
                    currentQuestion]
                .options
                .length,
            itemBuilder: (context, index) {
              // print(
              //     " one ${(ref.watch(quizProvider).isSelected == false || ref.watch(quizProvider).timer == 0) ? "Hi" : "Hello"}");
              // print("two ${ref.watch(quizProvider).isSelected == false}");
              // print("three ${ref.watch(quizProvider).timer != 0}");
              final option = ref
                  .watch(quizProvider.select((value) => value.questions))![
                      currentQuestion]
                  .options[index];
              return InkWell(
                onTap: ref.watch(quizProvider).isSelected ||
                        ref.watch(quizProvider).timer == 0
                    ? null
                    : () {
                        ref.read(quizProvider.notifier).stopTimer();
                        ref.read(quizProvider.notifier).toggleIsSelected();
                        ref
                            .read(quizProvider.notifier)
                            .updateSelectedOption(index);
                        if (ref.watch(quizProvider).selectedOption == index) {
                          print("aswal");
                          if (option.isCorrect) {
                            print("sireen");
                            ref
                                .read(quizProvider.notifier)
                                .incrementAsweredCount();
                          }
                        }
                        print(ref.watch(quizProvider).answeredCount);
                      },
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  padding: const EdgeInsets.only(left: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: ref.watch(quizProvider).isSelected ||
                            ref.watch(quizProvider).timer == 0
                        ? ref.watch(quizProvider).selectedOption == index
                            ? option.isCorrect
                                ? Colors.green
                                : Colors.red
                            : option.isCorrect
                                ? Colors.green
                                : null
                        : null,
                    border: Border.all(
                      color: AppTheme.of(context).colors.txtInverse,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${index + 1}. ${ref.watch(quizProvider.select((value) => value.questions))![currentQuestion].options[index].optionTxt}",
                      style: TextStyle(
                        color: AppTheme.of(context).colors.txtInverse,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const SizedBox(height: 14),
          ),
          (ref.watch(quizProvider).isSelected == false &&
                  ref.watch(quizProvider).timer != 0)
              ? const SizedBox()
              : Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (currentQuestion ==
                          ref.read(quizProvider).questions!.length - 1) {
                        context.go(ResultPage.routePath);
                      } else {
                        ref.read(quizProvider.notifier).nextQuestion();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      foregroundColor: AppTheme.of(context).colors.primary,
                    ),
                    child: const Text("Next"),
                  ),
                ),
        ],
      ),
    );
  }
}
