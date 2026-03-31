import 'package:flutter/material.dart';

abstract class RamCardBase extends StatelessWidget {
  const RamCardBase({
    super.key,
    this.surface,
    this.height,
    this.width,
    this.onSurface,
  });

  final double? height;
  final double? width;
  final Color? surface;
  final Color? onSurface;

  @override
  Widget build(BuildContext context);
}
