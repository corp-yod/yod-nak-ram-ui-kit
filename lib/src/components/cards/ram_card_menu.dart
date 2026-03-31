import 'package:flutter/material.dart';
import 'package:yod_nak_ram_ui_kit/src/components/cards/base_ram_card.dart';
import 'package:yod_nak_ram_ui_kit/yod_nak_ram_ui_kit.dart';

typedef WidgetCallback = void Function();

class RamCardMenu extends RamCardBase {
  const RamCardMenu({
    super.key,
    super.height,
    super.width,
    super.surface,
    super.onSurface,
    this.onTapMenu,
    required this.icon,
    required this.title,
    this.subtitle,
    this.iconColor,
  });

  final WidgetCallback? onTapMenu;
  final IconData icon;
  final String title;
  final String? subtitle;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onTapMenu != null) {
          onTapMenu!();
        }
      },
      child: RamCard(
        height: height,
        width: width,
        child: BoardCard(
          icon: icon,
          title: title,
          subtitle: subtitle ?? '',
          iconColor: iconColor ?? context.ramTheme.primary,
        ),
      ),
    );
  }
}

class BoardCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;

  const BoardCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(kPadding6),
          decoration: BoxDecoration(
            color: iconColor.withOpacity(0.1),
            borderRadius: BorderRadius.circular(kRadius1),
          ),
          child: Icon(icon, color: iconColor),
        ),
        const SizedBox(height: kGap6),
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
          textAlign: TextAlign.center,
        ),
        if (subtitle.isNotEmpty) ...[
          const SizedBox(height: kGap3),
          Text(
            subtitle,
            style: TextStyle(color: Colors.grey[600], fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ],
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF5B4BDB), Color(0xFF6A5AE0)],
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.grid_view, color: Colors.white70),
                  Icon(Icons.folder_open, color: Colors.white70),
                  SizedBox(width: 40),
                  Icon(Icons.pie_chart_outline, color: Colors.white70),
                  Icon(Icons.chat_bubble_outline, color: Colors.white70),
                ],
              ),
            ),
          ),
          Container(
            height: 55,
            width: 55,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.orange,
            ),
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
