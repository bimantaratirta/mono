import 'package:flutter/material.dart';
import 'package:mono/constants/colors.dart';
import 'package:mono/constants/sizes.dart';

import '../constants/gaps.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: CSize.medium,
                  vertical: CSize.small,
                ),
                shape: const StadiumBorder(),
              ),
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
