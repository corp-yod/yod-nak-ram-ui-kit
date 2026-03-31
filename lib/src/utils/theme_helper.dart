import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/theme_app.dart';

class RamThemeApp {
  static final ThemeApp _themeApp = ThemeApp();

  static ThemeData lightTheme() {
    return _themeApp.lightTheme();
  }

  static ThemeData darkTheme() {
    return _themeApp.darkTheme();
  }
}

extension ThemeContext on BuildContext {
  ColorScheme get ramTheme => Theme.of(this).colorScheme;
  TextTheme get ramTextTheme => Theme.of(this).textTheme;
}
