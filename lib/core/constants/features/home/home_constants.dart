import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_constants.g.dart';

class HomeConstants {
  final txtStartBtn = 'Start Quiz';
  final txtPoweredBy = 'powered by';
  final txtFooterWebsite = 'www.artifitia.com';
}

@riverpod
HomeConstants homeConstants(HomeConstantsRef ref) {
  return HomeConstants();
}
