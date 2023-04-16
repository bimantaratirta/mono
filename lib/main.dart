import 'package:flutter/material.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: CColor.primarySwatch,
        scaffoldBackgroundColor: CColor.white,
        primaryColor: CColor.green,
        fontFamily: 'Inter',
      ),
    );
  }
}
