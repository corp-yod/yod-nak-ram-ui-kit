import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

final ThemeApp themeApp = ThemeApp();

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
