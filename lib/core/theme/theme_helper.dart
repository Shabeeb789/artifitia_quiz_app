import 'package:artifitia_quiz_app/core/theme/extensions/colors_extension.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final BuildContext context;

  const AppTheme.of(this.context);

  AppColors get colors {
    return Theme.of(context).extension<AppColors>()!;
  }
}
