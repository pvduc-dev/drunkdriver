import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onTap;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar(
      backgroundColor: const Color(0xFFFFC41E),
      color: Colors.grey[200],
      activeColor: Colors.white,
      items: const [
        TabItem(
          icon: Iconsax.clock_copy,
          activeIcon: Iconsax.clock,
          title: 'Lịch sử',
        ),
        TabItem(
          icon: Iconsax.lifebuoy_copy,
          activeIcon: Iconsax.lifebuoy,
          title: 'Trang chủ',
        ),
        TabItem(
          icon: CupertinoIcons.person,
          activeIcon: CupertinoIcons.person_fill,
          title: 'Tài khoản',
        ),
      ],
      style: TabStyle.fixedCircle,
      cornerRadius: 16,
      initialActiveIndex: selectedIndex,
      onTap: onTap,
    );
  }
}
