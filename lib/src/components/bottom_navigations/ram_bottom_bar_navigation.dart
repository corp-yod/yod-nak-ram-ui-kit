import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/cards/ram_card.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/spacing/spacing_tokens.dart';
import 'package:yod_nak_ram_ui_kit/src/themes/theme.dart';

typedef OnTap = void Function(int index);

class RamBottomBarNavigation extends StatefulWidget {
  const RamBottomBarNavigation({super.key, this.onTap, required this.tabs});

  final OnTap? onTap;
  final List<Widget> tabs;

  @override
  State<RamBottomBarNavigation> createState() => _RamBottomBarNavigationState();
}

class _RamBottomBarNavigationState extends State<RamBottomBarNavigation>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: widget.tabs.length, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kSpace11,
        vertical: kSpace6,
      ),
      child: RamCard(
        rounded: kRadius4,
        child: TabBar(
          controller: controller,
          dividerHeight: 0,
          onTap: (value) {
            widget.onTap?.call(value);
          },
          tabs: widget.tabs,
        ),
      ),
    );
  }
}
