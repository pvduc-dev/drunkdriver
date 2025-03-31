import 'package:drunkdriver/screens/account_screen.dart';
import 'package:drunkdriver/screens/notification_screen.dart';
import 'package:flutter/material.dart';
import 'package:drunkdriver/widgets/bottom_nav_bar.dart';
import 'package:permission_handler/permission_handler.dart';

import 'history_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  // Danh sách các màn hình
  static final List<Widget> _screens = [
    const HomeScreen(),
    const HistoryScreen(),
    const NotificationScreen(),
    const AccountScreen(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Future<void> _requestLocationPermission() async {
    final status = await Permission.location.request();
    if (status.isDenied) {
      await openAppSettings();
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onTap: _onNavItemTapped,
        ),
      ),
    );
  }
}
