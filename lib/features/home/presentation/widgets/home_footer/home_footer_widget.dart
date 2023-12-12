import 'package:artifitia_quiz_app/core/constants/features/home/home_constants.dart';
import 'package:artifitia_quiz_app/core/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeFooterWidget extends ConsumerWidget {
  const HomeFooterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Text(
          ref.watch(homeConstantsProvider).txtPoweredBy,
          style: TextStyle(color: AppTheme.of(context).colors.txtSubtle),
        ),
        Text(
          ref.watch(homeConstantsProvider).txtFooterWebsite,
          style: TextStyle(color: AppTheme.of(context).colors.txtSubtle),
        )
      ],
    );
  }
}
