import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/homeView.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(
        MediaQuery.sizeOf(context).width,
        MediaQuery.sizeOf(context).height,
      ),
      child: MaterialApp(home: HomePage()),
    );
  }
}
