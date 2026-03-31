import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/cards/ram_card.dart';
import 'package:yod_nak_ram_ui_kit/src/theme/padding.dart';

class RamBottomBarNavigation extends StatelessWidget {
  const RamBottomBarNavigation({super.key, this.controller});

  final TabController? controller;

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
          tabs: [
            Tab(icon: Icon(Icons.home_outlined), text: 'Home'),
            Tab(icon: Icon(Icons.search_outlined), text: 'Search'),
            Tab(icon: Icon(Icons.person_outline), text: 'Person'),
          ],
        ),
      ),
    );
  }
}
