import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/colors.dart';
import 'pages/launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: CColor.primarySwatch,
        scaffoldBackgroundColor: CColor.white,
        primaryColor: CColor.green,
        fontFamily: 'Inter',
      ),
      home: const LauncherPage(),
    );
  }
}
