import 'package:artifitia_quiz_app/core/theme/theme_helper.dart';
import 'package:flutter/material.dart';

class QuestionEmptyWidget extends StatelessWidget {
  const QuestionEmptyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'No questions loaded. Please try again',
        style: TextStyle(color: AppTheme.of(context).colors.txtInverse),
      ),
    );
  }
}
