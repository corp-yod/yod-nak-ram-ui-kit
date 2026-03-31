import 'package:flutter/material.dart';

abstract class BaseRamText extends StatelessWidget {
  const BaseRamText({
    super.key,
    required this.text,
    this.colorText,
    this.fontSize,
    this.isBold = true,
    this.maxLine = 3,
  });

  final String text;
  final Color? colorText;
  final double? fontSize;
  final bool isBold;
  final int? maxLine;

  @override
  Widget build(BuildContext context);
}
