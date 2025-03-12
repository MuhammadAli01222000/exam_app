import 'package:exam_app/core/theme/colors.dart';
import 'package:exam_app/core/theme/dimens.dart';
import 'package:exam_app/core/theme/icons.dart';
import 'package:exam_app/core/theme/strings.dart';
import 'package:exam_app/core/widgets/app_icon.dart';
import 'package:exam_app/core/widgets/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SafetyPage extends StatefulWidget {
  const SafetyPage({super.key});

  @override
  State<SafetyPage> createState() => _SafetyPageState();
}

class _SafetyPageState extends State<SafetyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: CustomText(
          color: AppColors.grey,
          text: AppStrings.safety,
          fontWeight: FontWeight.bold,
          size: AppDimens.d26,
        ),
        actions: [
          CustomIcon(
            icon: AppIcons.back2,
            color: AppColors.grey,
            onTap: () {
              ///orqa page qaytish uchun
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
