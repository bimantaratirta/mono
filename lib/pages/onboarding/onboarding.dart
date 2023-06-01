import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mono/constants/colors.dart';
import 'package:mono/constants/sizes.dart';
import 'package:mono/pages/regist/regist.dart';

import '../../constants/button_style.dart';
import '../../constants/gaps.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});
  static const String routeName = "/onboarding";

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: const AssetImage('assets/illustrations/man.png'),
              width: size.width * (50 / 100),
            ),
            VerticalGap.medium,
            Text(
              "Kelola Lebih Bijak\nSimpan Lebih Banyak",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(fontWeight: FontWeight.bold, color: CColor.green),
              textAlign: TextAlign.center,
            ),
            VerticalGap.medium,
            ElevatedButton(
              onPressed: () {
                Get.off(
                  () => RegistPage(),
                  transition: Transition.rightToLeft,
                );
              },
              style: CButtonStyle.rounded,
              child: const Text(
                "Mulai Sekarang",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
