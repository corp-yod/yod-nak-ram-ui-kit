import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/padding.dart';

class RamCard extends StatelessWidget {
  const RamCard({
    super.key,
    this.height,
    this.width,
    this.surface,
    this.child,
    this.rounded,
  });

  final double? height;
  final double? width;
  final double? rounded;
  final Color? surface;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(rounded ?? kRadius1),
        ),
        child: Padding(padding: EdgeInsets.all(kPadding4), child: child),
      ),
    );
  }
}
