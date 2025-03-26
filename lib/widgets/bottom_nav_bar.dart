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
    return BottomNavigationBar(
      backgroundColor: const Color(0xFFFFC41E),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey[200],
      currentIndex: selectedIndex,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
      unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w500),
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.clock_copy),
          activeIcon: Icon(Iconsax.clock),
          label: 'Lịch sử',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.aave_aave_copy),
          activeIcon: Icon(Iconsax.aave_aave),
          label: 'Trang chủ',
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          activeIcon: Icon(CupertinoIcons.person_fill),
          label: 'Tài khoản',
        ),
      ],
    );
  }
}
