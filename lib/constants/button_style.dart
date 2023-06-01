import 'package:flutter/material.dart';

import 'sizes.dart';

abstract class CButtonStyle {
  static ButtonStyle rounded = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(
      horizontal: CSize.medium,
      vertical: CSize.small,
    ),
    shape: const StadiumBorder(),
  );
}
