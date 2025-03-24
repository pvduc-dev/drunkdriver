import 'package:flutter/material.dart';
import 'package:drunkdriver/widgets/bottom_nav_bar.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: Text('Lịch sử'));
  }
}
