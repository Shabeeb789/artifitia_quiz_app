import 'package:artifitia_quiz_app/core/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class QuestionsLoadingWidget extends StatelessWidget {
  const QuestionsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: AppTheme.of(context).colors.txtInverse,
      ),
    );
  }
}
