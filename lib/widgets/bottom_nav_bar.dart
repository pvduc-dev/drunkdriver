import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
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
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      onTap: onTap,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.aave_aave_copy),
          activeIcon: Icon(Iconsax.aave_aave),
          label: 'Trang chủ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.clock_copy),
          activeIcon: Icon(Iconsax.clock),
          label: 'Lịch sử',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.notification_copy),
          activeIcon: Icon(Iconsax.notification),
          label: 'Thông báo',
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
