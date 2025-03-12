import 'package:exam_app/core/config/routes.dart';
import 'package:exam_app/screen/error_page.dart';
import 'package:flutter/material.dart';
class ExamApp extends StatefulWidget {
  const ExamApp({super.key});

  @override
  State<ExamApp> createState() => _ExamAppState();
}

class _ExamAppState extends State<ExamApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.infoWhalePage,
     // initialRoute: AppRoutes.home,
      //home: ,
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (context)=>const ErrorPage());

      },
    );
  }
}
