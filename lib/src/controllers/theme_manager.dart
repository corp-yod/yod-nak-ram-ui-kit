import 'package:flutter/material.dart';
import 'package:yod/yod.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/utils.dart';

class ThemeManager extends YodManager {
  final isDarkMode = false.yor;

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }

  ThemeData get currentTheme =>
      isDarkMode.value ? RamThemeApp.darkTheme() : RamThemeApp.lightTheme();
}
