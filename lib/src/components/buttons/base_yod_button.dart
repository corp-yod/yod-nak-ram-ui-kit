import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/theme.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

typedef YodButtonCallback = void Function();

abstract class YodButtonBase extends StatelessWidget {
  const YodButtonBase({
    super.key,
    this.label,
    this.width,
    this.height = 48,
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
  final YodButtonCallback? onPressed;

  Widget buildLabel(BuildContext context) {
    final yodTheme = context.yodTheme;
    final yodTextTheme = context.yodTextTheme;

    return Text(
      label ?? defaultText,
      style: yodTextTheme.labelLarge?.copyWith(
        color: onSurface ?? yodTheme.onPrimary,
      ),
    );
  }

  ButtonStyle style(BuildContext context) {
    final yodTheme = context.yodTheme;

    return ElevatedButton.styleFrom(
      backgroundColor: surface ?? yodTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kRadius1),
      ),
    );
  }

  @override
  Widget build(BuildContext context);
}

mixin YodButtonIconMixin {
  Widget buildIcon(BuildContext context, Widget? icon) {
    final yodTheme = context.yodTheme;
    if (icon == null) return SizedBox();

    if (icon is Icon) {
      return Icon(icon.icon, size: 20, color: icon.color ?? yodTheme.onPrimary);
    } else {
      return icon;
    }
  }
}
