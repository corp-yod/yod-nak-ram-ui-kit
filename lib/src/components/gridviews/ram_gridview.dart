import 'package:flutter/material.dart';

typedef RamGridViewItemBuilder =
    Widget? Function(BuildContext context, int index);

class RamGridview extends StatelessWidget {
  const RamGridview({
    super.key,
    this.itemCount,
    this.mainAxisExtent,
    required this.itemBuilder,
  });

  final int? itemCount;
  final double? mainAxisExtent;
  final RamGridViewItemBuilder itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: mainAxisExtent,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}
