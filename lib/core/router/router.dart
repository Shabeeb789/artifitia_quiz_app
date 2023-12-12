import 'package:artifitia_quiz_app/features/home/presentation/pages/home_page.dart';
import 'package:artifitia_quiz_app/features/quiz/presentation/pages/quiz_page.dart';
import 'package:artifitia_quiz_app/features/result/presentation/pages/result_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

/// Configuring the router used in the app
final _appRouter = GoRouter(
  routes: [
    GoRoute(
      path: HomePage.routePath,
      name: HomePage.routeName,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: QuizPage.routePath,
      name: QuizPage.routeName,
      builder: (context, state) => const QuizPage(),
    ),
    GoRoute(
      path: ResultPage.routePath,
      name: ResultPage.routeName,
      builder: (context, state) => const ResultPage(),
    ),
  ],
);

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return _appRouter;
}
