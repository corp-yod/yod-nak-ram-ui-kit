import 'package:flutter/material.dart';
import 'package:yod/yod.dart';

class ThemeManagement {
  factory ThemeManagement() => _instance;

  ThemeManagement._internal();

  static final ThemeManagement _instance = ThemeManagement._internal();

  ThemeMode? _themeMode;

  ThemeMode get themeMode => _themeMode ?? ThemeMode.light;

  Future<void> initThemeManagement() async {
    String? currentTheme = await YodData().variableStorage().getKeyValueString(
      'current_theme',
    );

    print('#->>> Current Theme from Storage: $currentTheme');

    if (currentTheme == null) {
      _themeMode = ThemeMode.light;
      setThemeMode(_themeMode!);
      return;
    }

    _themeMode = currentTheme == ThemeMode.dark.name
        ? ThemeMode.dark
        : currentTheme == ThemeMode.light.name
        ? ThemeMode.light
        : ThemeMode.system;
  }

  void setThemeMode(ThemeMode themeMode) {
    _themeMode = themeMode;
    YodData().variableStorage().setKeyValueString(
      'current_theme',
      themeMode == ThemeMode.dark
          ? ThemeMode.dark.name
          : themeMode == ThemeMode.light
          ? ThemeMode.light.name
          : ThemeMode.system.name,
    );
  }
}
