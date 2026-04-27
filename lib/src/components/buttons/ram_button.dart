import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/common_interface/ram_base_button_interface.dart';

enum RamButtonStyle { filled, tonalFilled, text, outlined, elevated }

enum RamButtonSize { large, small }

enum RamButtonTheme { primary, warning, error, success }

class RamButton extends RamButtonBase {
  const RamButton({
    super.key,
    required super.label,
    super.onPressed,
    super.style,
    super.size,
    super.theme,
    super.prefixIconKey,
    super.suffixIconKey,
    super.minWidth,
    super.isDisabled,
    super.noLeftPadding,
    super.noRightPadding,
    super.isIgnorePrefixIconColor,
    super.isIgnoreSuffixIconColor,
  });
}

class RamButtonIcon extends RamButtonBase {
  const RamButtonIcon({
    super.key,
    required this.icon,
    required super.label,
    super.onPressed,
    super.style,
    super.size,
    super.theme,
    super.prefixIconKey,
    super.suffixIconKey,
    super.minWidth,
    super.isDisabled,
    super.noLeftPadding,
    super.noRightPadding,
    super.isIgnorePrefixIconColor,
    super.isIgnoreSuffixIconColor,
  });

  final Widget? icon;
}
