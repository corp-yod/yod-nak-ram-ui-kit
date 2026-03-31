import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/padding.dart';

import 'colors.dart';

class ThemeApp {
  ThemeApp._();

  factory ThemeApp() {
    return _instance;
  }

  static final ThemeApp _instance = ThemeApp._();

  final double _font14 = 14;
  final double _font16 = 16;
  final double _font18 = 18;
  final double _font20 = 20;
  final double _font22 = 22;

  TextStyle _styleFonts({required double fontSize}) {
    final result = GoogleFonts.lato(fontSize: fontSize);
    return result;
  }

  ThemeData lightTheme() {
    return ThemeData(
      cardColor: containerLight,
      shadowColor: shadowLight,
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: primaryLight,
        onPrimary: onPrimaryLight,
        secondary: secondaryLight,
        onSecondary: onSecondaryLight,
        error: errorLight,
        onError: onErrorLight,
        surface: surfaceLight,
        onSurface: onSurfaceLight,
        surfaceContainer: containerLight,
        shadow: shadowLight,
      ),
      cardTheme: CardThemeData(
        elevation: kSpace2,
        color: containerLight,
        shadowColor: shadowLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadius1),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: _styleFonts(
          fontSize: _font22,
        ).copyWith(fontWeight: FontWeight.bold),
        headlineMedium: _styleFonts(
          fontSize: _font20,
        ).copyWith(fontWeight: FontWeight.bold),
        titleLarge: _styleFonts(
          fontSize: _font18,
        ).copyWith(fontWeight: FontWeight.bold),
        titleMedium: _styleFonts(
          fontSize: _font16,
        ).copyWith(fontWeight: FontWeight.bold),
        bodyLarge: _styleFonts(fontSize: _font16),
        bodySmall: _styleFonts(fontSize: _font14),
      ),
    );
  }

  ThemeData darkTheme() {
    return ThemeData(
      cardColor: containerDark,
      shadowColor: shadowDark,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: primaryDark,
        onPrimary: onPrimaryDark,
        secondary: secondaryDark,
        onSecondary: onSecondaryDark,
        error: errorDark,
        onError: onErrorDark,
        surface: surfaceDark,
        onSurface: onSurfaceDark,
        surfaceContainer: containerDark,
        shadow: shadowDark,
      ),
      cardTheme: CardThemeData(
        elevation: kSpace2,
        color: containerDark,
        shadowColor: shadowDark,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadius1),
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: _styleFonts(
          fontSize: _font22,
        ).copyWith(fontWeight: FontWeight.bold),
        headlineMedium: _styleFonts(
          fontSize: _font20,
        ).copyWith(fontWeight: FontWeight.bold),
        titleLarge: _styleFonts(
          fontSize: _font18,
        ).copyWith(fontWeight: FontWeight.bold),
        titleMedium: _styleFonts(
          fontSize: _font16,
        ).copyWith(fontWeight: FontWeight.bold),
        bodyLarge: _styleFonts(fontSize: _font16),
        bodySmall: _styleFonts(fontSize: _font14),
      ),
    );
  }
}
