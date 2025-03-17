import 'package:flutter/material.dart';
import '../widgets/marker_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: MarkerButton(),
      ),
    );
  }
}