import 'package:exam_app/core/theme/colors.dart';
import 'package:exam_app/core/theme/dimens.dart';
import 'package:exam_app/core/theme/icons.dart';
import 'package:exam_app/core/theme/strings.dart';
import 'package:exam_app/core/widgets/app_icon.dart';
import 'package:exam_app/core/widgets/app_text.dart';
import 'package:exam_app/screen/home_page.dart';
import 'package:flutter/material.dart';

class InfoWhalePage extends StatefulWidget {
  const InfoWhalePage({super.key});

  @override
  State<InfoWhalePage> createState() => _InfoWhalePageState();
}

class _InfoWhalePageState extends State<InfoWhalePage> {
  @override
  Widget build(BuildContext context) {
    bool showBottomSheet = false;
    final ScrollController controller = ScrollController();
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          controller: controller,
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(AppDimens.d10),
              child: Stack(
                children: [
                  Positioned(
                    child: ClipRRect(
                      child: Image.asset(path),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(AppDimens.d26),
                      ),
                    ),
                  ),
                  SizedBox(height: AppDimens.d16),
                  Positioned(
                    left: AppDimens.d10,
                    right: AppDimens.d10,
                    top: AppDimens.d200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(AppDimens.d16),
                        topRight: Radius.circular(AppDimens.d16),
                      ),
                      child: Container(
                        decoration: BoxDecoration(color: AppColors.white),
                        child: CustomText(
                          color: AppColors.black,
                          text: AppStrings.infoKit,
                          fontWeight: FontWeight.w500,
                          size: AppDimens.d10,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: const AppBottom(),
      ),
    );
  }
}

///alohida qilgan edim qizarb qoldi keyin joyga qaytardim yana
class AppBottom extends StatelessWidget {
  const AppBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: CustomIcon(icon: AppIcons.left, color: AppColors.grey),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(icon: AppIcons.play, color: AppColors.white),
          backgroundColor: AppColors.blue,
          label: "",
        ),
        BottomNavigationBarItem(
          icon: CustomIcon(icon: AppIcons.right, color: AppColors.grey),
          label: "",
        ),
      ],
    );
  }
}
