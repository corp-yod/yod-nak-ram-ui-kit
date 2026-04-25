import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/base_ram_ui.dart';
import 'package:yod_nak_ram_ui_kit/src/components/texts.dart/ram_text.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/spacing/spacing_tokens.dart';

import 'base_ram_button.dart';

class RamButton extends RamButtonBase {
  const RamButton({
    super.key,
    super.label,
    super.width,
    super.height = kSpace14,
    super.surface,
    super.onSurface,
    super.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style(context),
        child: RamLabelText(
          text: label ?? RamButtonBase.defaultText,
          colorText: onSurface,
        ),
      ),
    );
  }
}

class RamButtonIcon extends RamButtonBase {
  const RamButtonIcon({
    required this.icon,
    super.key,
    super.label,
    super.width,
    super.height = kSpace14,
    super.surface,
    super.onSurface,
    super.onPressed,
  });

  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        style: style(context),
        icon: RamBaseIcon(icon: icon),
        label: RamLabelText(
          text: label ?? RamButtonBase.defaultText,
          colorText: onSurface,
        ),
      ),
    );
  }
}
