import 'package:flutter/material.dart';

import 'base_yod_button.dart';

class YodButton extends YodButtonBase {
  const YodButton({
    super.key,
    super.label,
    super.width,
    super.height = 48,
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
        child: buildLabel(context),
      ),
    );
  }
}

class YodButtonIcon extends YodButtonBase with YodButtonIconMixin {
  const YodButtonIcon({
    required this.icon,
    super.key,
    super.label,
    super.width,
    super.height = 48,
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
        icon: buildIcon(context, icon),
        label: buildLabel(context),
      ),
    );
  }
}
