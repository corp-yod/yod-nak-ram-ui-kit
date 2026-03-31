import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/padding.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

class RamLoading extends StatelessWidget {
  const RamLoading({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    final ramTheme = context.ramTheme;
    return CircularProgressIndicator(
      value: value,
      color: ramTheme.primary,
      backgroundColor: ramTheme.onSecondary,
      strokeWidth: kSpace4,
      strokeCap: StrokeCap.round,
      padding: const EdgeInsets.all(kSpace3),
    );
  }
}
