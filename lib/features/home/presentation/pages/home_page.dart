import 'package:artifitia_quiz_app/core/theme/theme_helper.dart';
import 'package:artifitia_quiz_app/features/home/presentation/widgets/home_footer/home_footer_widget.dart';
import 'package:artifitia_quiz_app/features/home/presentation/widgets/home_header/home_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppTheme.of(context).colors.primary,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(
            flex: 3,
          ),
          HomeHeaderWidget(),
          Spacer(
            flex: 2,
          ),
          HomeFooterWidget(),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
