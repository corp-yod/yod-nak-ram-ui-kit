import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/colors/ram_light_theme_colors.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/colors/ram_theme_colors.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/text_styles/ram_text_style.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/text_styles/ram_th_text_style.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/theme_app.dart';

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

extension _ColorGetter on ThemeData {
  RamThemeColors get themeColors =>
      extension<RamThemeColors>() ?? ramLightThemeColors;
}

extension ThemeColorGetter on BuildContext {
  RamThemeColors get ramThemeColors => Theme.of(this).themeColors;
}

extension _TextStyleGetter on ThemeData {
  RamTextStyle get themeTextStyle =>
      extension<RamTextStyle>() ?? ramThTextStyle;
}

extension ThemeTextStyleGetter on BuildContext {
  RamTextStyle get ramTextStyle {
    final fontFamily = Theme.of(this).textTheme.labelLarge?.fontFamily;
    return Theme.of(
      this,
    ).themeTextStyle.withFontFamily(fontFamily ?? 'DBHeaventNowStd');
  }
}
