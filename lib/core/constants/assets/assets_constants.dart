import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'assets_constants.g.dart';

class AppAssets {
  static const _imagePath = 'assets/images/';

  final imgHome = '${_imagePath}img_home.png';
  final imgCongratulation = '${_imagePath}img_congrats.png';
}

@riverpod
AppAssets appAssets(AppAssetsRef ref) {
  return AppAssets();
}
