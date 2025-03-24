import 'package:flutter/material.dart';
import 'package:drunkdriver/widgets/bottom_nav_bar.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Tài khoản'));
  }
}
