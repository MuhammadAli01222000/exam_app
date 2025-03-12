import 'package:exam_app/core/config/routes.dart';
import 'package:exam_app/core/theme/colors.dart';
import 'package:exam_app/core/theme/dimens.dart';
import 'package:exam_app/core/theme/icons.dart';
import 'package:exam_app/core/theme/strings.dart';
import 'package:exam_app/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';

import '../core/widgets/app_card.dart';
import '../core/widgets/app_text.dart';

const path = "assets/img/1.png";

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final dateTime = DateTime.now();

  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    int hour = dateTime.hour;
    int minute = dateTime.minute;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
      home: Scaffold(
        appBar: _buildAppBar(context),
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          controller: controller,
          scrollDirection: Axis.vertical,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(AppDimens.d10),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  for (var i = 1; i <= 11; i++)
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.safetyPage);
                      },
                      child: CustomCard(
                        imgPath: "assets/img/$i.png",
                        hours: hour,
                        minut: minute,
                        nameWhale: AppStrings.whale,
                        nameWhale2: AppStrings.whale2,
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: AppIcons.menu,
              backgroundColor: AppColors.white,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: AppIcons.question,
              backgroundColor: AppColors.white,
              label: "",
            ),
            BottomNavigationBarItem(
              icon: AppIcons.person,
              backgroundColor: AppColors.white,
              label: "",
            ),
          ],
        ),
      ),
    );
  }

  /// app bar
  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: false,
      backgroundColor: AppColors.white,
      title: Text(AppStrings.appBar),
      actions: [
        CustomIcon(
          icon: AppIcons.back,
          color: AppColors.grey,
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.infoWhalePage);
          },
        ),
      ],
    );
  }
}
