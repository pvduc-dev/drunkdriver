import 'package:drunkdriver/screens/account_screen.dart';
import 'package:flutter/material.dart';
import 'package:drunkdriver/widgets/bottom_nav_bar.dart';

import 'history_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;

  // Danh sách các màn hình
  static final List<Widget> _screens = [
    const HistoryScreen(),
    const HomeScreen(),
    const AccountScreen(),
  ];

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
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
