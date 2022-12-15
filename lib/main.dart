import 'package:flutter/material.dart';
import 'package:flutter_demo/core/constants/app_colors.dart';
import 'package:flutter_demo/core/view/screens/home/home_screen.dart';
import 'package:flutter_demo/core/view/screens/signin/singin_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'Tajawal',
          // primarySwatch: AppColor.kPrimaryColor,
          textTheme: TextTheme()),
      home: const SingInScreen(),
    );
  }
}
