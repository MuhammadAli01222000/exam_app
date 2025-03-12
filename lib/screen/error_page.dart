import 'package:exam_app/core/theme/colors.dart';
import 'package:exam_app/core/theme/dimens.dart';
import 'package:exam_app/core/theme/strings.dart';
import 'package:exam_app/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    const animationErrorPage = "assets/animation/for_error_page.json";
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Lottie.asset(
              animationErrorPage,
              width: AppDimens.d200,
              height: AppDimens.d200,
            ),
            const SizedBox(height: AppDimens.d10),
            const Text(AppStrings.error),
            const SizedBox(height: 10),
            const ForErrorPageButton(),
          ],
        ),
      ),
    );
  }
}
