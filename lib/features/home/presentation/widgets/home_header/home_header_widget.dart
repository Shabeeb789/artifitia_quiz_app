import 'package:artifitia_quiz_app/core/constants/assets/assets_constants.dart';
import 'package:artifitia_quiz_app/core/constants/features/home/home_constants.dart';
import 'package:artifitia_quiz_app/core/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeHeaderWidget extends ConsumerWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(ref.watch(appAssetsProvider).imgHome),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppTheme.of(context).colors.btnPrimary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                )),
            onPressed: () {},
            child: Text(
              ref.watch(homeConstantsProvider).txtStartBtn,
              style: TextStyle(
                color: AppTheme.of(context).colors.txtInverse,
              ),
            ),
          )
        ],
      ),
    );
  }
}
