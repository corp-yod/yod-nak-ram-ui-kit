import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/spacing/spacing_tokens.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/theme.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

typedef RamButtonCallback = void Function();

abstract class RamButtonBase extends StatelessWidget {
  const RamButtonBase({
    super.key,
    this.label,
    this.width,
    this.height = kSpace14,
    this.surface,
    this.onSurface,
    this.onPressed,
  });

  static const defaultText = 'Yod Button';
  final String? label;
  final Color? surface;
  final Color? onSurface;
  final double? width;
  final double? height;
  final RamButtonCallback? onPressed;

  ButtonStyle style(BuildContext context) {
    final ramTheme = context.ramTheme;

    return ElevatedButton.styleFrom(
      backgroundColor: surface ?? ramTheme.primary,
      shadowColor: ramTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kRadius1),
      ),
    );
  }

  @override
  Widget build(BuildContext context);
}
