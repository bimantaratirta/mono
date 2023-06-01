import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';
import 'onboarding.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage({super.key});

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(
        () => const OnboardingPage(),
        transition: Transition.downToUp,
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColor.green,
      body: Center(
        child: Text(
          "mono",
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(color: CColor.white, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
