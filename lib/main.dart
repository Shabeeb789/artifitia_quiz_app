import 'package:artifitia_quiz_app/core/router/router.dart';
import 'package:artifitia_quiz_app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: QuizApp()));
}

class QuizApp extends ConsumerWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      theme: ref.watch(appThemeProvider),
      routerConfig: ref.watch(appRouterProvider),
    );
  }
}
