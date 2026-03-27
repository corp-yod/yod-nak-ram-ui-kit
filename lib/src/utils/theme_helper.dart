import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/theme_app.dart';

class YodThemeApp {
  static final ThemeApp _themeApp = ThemeApp();

  static ThemeData lightTheme() {
    return _themeApp.lightTheme();
  }
}

extension ThemeContext on BuildContext {
  ColorScheme get yodTheme => Theme.of(this).colorScheme;
  TextTheme get yodTextTheme => Theme.of(this).textTheme;
}
