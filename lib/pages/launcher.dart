import 'package:flutter/material.dart';

import '../constants/colors.dart';

class LauncherPage extends StatefulWidget {
  const LauncherPage({super.key});

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CColor.green,
      body: Center(
        child: Text(
          "MONO",
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: CColor.white),
        ),
      ),
    );
  }
}
