import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

import 'base_ram_text.dart';

class RamTitleText extends BaseRamText {
  const RamTitleText({
    super.key,
    required super.text,
    super.colorText,
    super.fontSize,
    super.isBold = true,
  });

  @override
  Widget build(BuildContext context) {
    final ramTheme = context.ramTheme;
    final ramTextTheme = context.ramTextTheme;

    return Text(
      text,
      maxLines: maxLine,
      style: ramTextTheme.titleMedium?.copyWith(
        color: colorText ?? ramTheme.onPrimary,
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}

class RamLabelText extends BaseRamText {
  const RamLabelText({
    super.key,
    required super.text,
    super.colorText,
    super.fontSize,
    super.isBold = false,
    super.maxLine,
  });

  @override
  Widget build(BuildContext context) {
    final ramTheme = context.ramTheme;
    final ramTextTheme = context.ramTextTheme;

    return Text(
      text,
      maxLines: maxLine,
      style: ramTextTheme.bodyMedium?.copyWith(
        color: colorText ?? ramTheme.onPrimary,
        fontSize: fontSize,
        fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
