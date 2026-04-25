import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/spacing/ram_spacing.dart';

extension SpacingExtension on BuildContext {
  double get bottomSafeArea => (MediaQuery.viewPaddingOf(this).bottom > kPadding7) ? MediaQuery.viewPaddingOf(this).bottom : kPadding7;
  double get bottomSafeAreaWithKeyboard => (MediaQuery.paddingOf(this).bottom > kPadding7) ? MediaQuery.paddingOf(this).bottom : kPadding7;
}
