import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/spacing/spacing_tokens.dart';
import 'package:yod_nak_ram_ui_kit/src/utils/theme_helper.dart';

class RamLoading extends StatelessWidget {
  const RamLoading({super.key, this.value});

  final double? value;

  @override
  Widget build(BuildContext context) {
    final ramTheme = context.ramTheme;
    return LoadingAnimationWidget.inkDrop(
      size: kSpace4,
      color: ramTheme.primary,
    );
  }
}
