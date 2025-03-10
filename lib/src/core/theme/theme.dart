import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'color.dart';

class COSThemes {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      surface: COSColors.neutral.shade200,
      primary: COSColors.primary,
      secondary: COSColors.secondary,
      error: COSColors.error,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
    cardColor: COSColors.neutral.shade50,
    scaffoldBackgroundColor: COSColors.neutral.shade200,
    pageTransitionsTheme: PageTransitionsTheme(
      builders: Map<TargetPlatform, PageTransitionsBuilder>.fromIterable(
        TargetPlatform.values,
        value: (_) => const FadeForwardsPageTransitionsBuilder(),
      ),
    ),
    navigationBarTheme: NavigationBarThemeData(
      indicatorColor: Colors.transparent,
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return IconThemeData(size: 28, color: COSColors.primary);
        }
        return IconThemeData(color: COSColors.neutral.shade300, size: 28);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        Color color() {
          if (states.contains(WidgetState.selected)) {
            return COSColors.primary;
          }
          return COSColors.neutral.shade300;
        }

        return TextStyle(color: color(), fontWeight: FontWeight.w500);
      }),
      backgroundColor: COSColors.neutral[50],
    ),
  );
}
