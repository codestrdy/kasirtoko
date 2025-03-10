import 'package:flutter/material.dart';

part 'color.dart';

class COSThemes {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      surface: COSColors.neutral.shade200,
      primary: COSColors.primary,
      secondary: COSColors.secondary,
      error: COSColors.error,
    ),
    cardColor: COSColors.neutral.shade50,
    scaffoldBackgroundColor: COSColors.neutral.shade200,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: Map<TargetPlatform, PageTransitionsBuilder>.fromIterable(
        TargetPlatform.values,
        value: (_) => const FadeForwardsPageTransitionsBuilder(),
      ),
    ),
  );
}
