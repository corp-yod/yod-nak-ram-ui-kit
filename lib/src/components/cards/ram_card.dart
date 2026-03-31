import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/padding.dart';

class RamCard extends StatelessWidget {
  const RamCard({super.key, this.height, this.width, this.surface, this.child});

  final double? height;
  final double? width;
  final Color? surface;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: Card(
        child: Padding(padding: EdgeInsets.all(kPadding4), child: child),
      ),
    );
  }
}
