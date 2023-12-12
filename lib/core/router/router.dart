import 'package:artifitia_quiz_app/features/home/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

/// Configuring the router used in the app
final _appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'Home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  return _appRouter;
}
