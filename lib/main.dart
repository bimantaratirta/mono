import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mono/pages/onboarding/onboarding.dart';

import 'constants/colors.dart';
import 'pages/launcher/launcher.dart';
import 'pages/regist/regist.dart';

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
      initialRoute: LauncherPage.routeName,
      routes: {
        LauncherPage.routeName: (_) => const LauncherPage(),
        OnboardingPage.routeName: (_) => const OnboardingPage(),
        RegistPage.routeName: (_) => RegistPage(),
      },
    );
  }
}
