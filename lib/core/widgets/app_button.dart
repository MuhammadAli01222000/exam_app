import 'package:exam_app/core/theme/colors.dart';
import 'package:exam_app/core/theme/strings.dart';
import 'package:flutter/material.dart';



class ForErrorPageButton extends StatelessWidget {
  const ForErrorPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text(AppStrings.back, style: TextStyle(color: AppColors.black)),
    );
  }
}
