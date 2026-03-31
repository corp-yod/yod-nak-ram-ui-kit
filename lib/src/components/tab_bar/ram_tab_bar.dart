import 'package:flutter/material.dart';

class RamTabBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const RamTabBar({super.key, required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).colorScheme.primary;

    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(blurRadius: 10, color: Colors.black12)],
      ),
      child: Row(
        children: [
          _buildItem(
            context,
            index: 0,
            icon: Icons.home_outlined,
            activeIcon: Icons.home,
            label: "Home",
            color: primary,
          ),
          _buildItem(
            context,
            index: 1,
            icon: Icons.search_outlined,
            activeIcon: Icons.search,
            label: "Search",
            color: primary,
          ),
          _buildItem(
            context,
            index: 2,
            icon: Icons.person_outline,
            activeIcon: Icons.person,
            label: "Profile",
            color: primary,
          ),
        ],
      ),
    );
  }

  Widget _buildItem(
    BuildContext context, {
    required int index,
    required IconData icon,
    required IconData activeIcon,
    required String label,
    required Color color,
  }) {
    final isActive = currentIndex == index;

    return Expanded(
      child: GestureDetector(
        onTap: () => onTap(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 🔥 ICON SCALE ANIMATION
              AnimatedScale(
                scale: isActive ? 1.2 : 1.0,
                duration: const Duration(milliseconds: 200),
                child: Icon(
                  isActive ? activeIcon : icon,
                  color: isActive ? color : Colors.grey,
                ),
              ),

              const SizedBox(height: 4),

              // 🔥 TEXT ANIMATION
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 200),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
                  color: isActive ? color : Colors.grey,
                ),
                child: Text(label),
              ),

              const SizedBox(height: 4),

              // 🔥 INDICATOR
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                height: 3,
                width: isActive ? 20 : 0,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
