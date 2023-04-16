import 'package:flutter/material.dart';

class CColor {
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color lightGrey = Color(0xFFAAAAAA);
  static const Color grey = Color(0xFF666666);
  static const Color lightGreen = Color(0xFF25A969);
  static const Color green = Color(0xFF438883);
  static const Color darkGreen = Color(0xFF1B5C58);
  static const Color red = Color(0xFFF95B51);
  static const Color cream = Color(0xFFFFAB7B);

  static final MaterialColor primarySwatch = MaterialColor(green.value, const {
    50: Color(0xFFa1c4c1),
    100: Color(0xFF8eb8b5),
    200: Color(0xFF7baca8),
    300: Color(0xFF69a09c),
    400: Color(0xFF56948f),
    500: green,
    600: Color(0xFF3c7a76),
    700: Color(0xFF366d69),
    800: Color(0xFF2f5f5c),
    900: Color(0xFF28524f)
  });
}
