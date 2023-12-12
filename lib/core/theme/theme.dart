import 'package:artifitia_quiz_app/core/theme/color_palette/color_palette.dart';
import 'package:artifitia_quiz_app/core/theme/extensions/colors_extension.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme.g.dart';

ThemeData _lightTheme = ThemeData(
  useMaterial3: true,
  primaryColor: AppColorPalette.purple_800,
  colorScheme: const ColorScheme.light(),
  extensions: <ThemeExtension<dynamic>>[
    AppColors(
      primary: AppColorPalette.purple_800,
      btnPrimary: AppColorPalette.deepPurple_500,
      txtInverse: Colors.white,
      progressFill: AppColorPalette.purple_500,
      txtSubtle: AppColorPalette.deepPurple_200,
    ),
  ],
);

@riverpod
ThemeData appTheme(AppThemeRef ref) {
  return _lightTheme;
}
