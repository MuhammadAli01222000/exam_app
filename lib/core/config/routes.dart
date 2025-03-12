import 'package:exam_app/screen/error_page.dart';
import 'package:exam_app/screen/info_whale_page.dart';
import 'package:exam_app/screen/safety_page.dart';
import 'package:flutter/material.dart';

import '../../screen/home_page.dart';

sealed class AppRoutes {
  static const home = "";
  static const infoWhalePage = "/infoWhalePage";
  static const safetyPage = "/safetyPage";
  static const errorPage = "/error";
/// navigatorda xatoligim bor topa olmadim
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
        home: (context) => const HomePage(),
        infoWhalePage: (context) => const InfoWhalePage(),
        safetyPage: (context) => const SafetyPage(),
        errorPage: (context) => const ErrorPage(),
      };
}
