import 'package:flutter/material.dart';
import './screens/home_screen.dart';
import './screens/driver_request_screen.dart';
import './screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SoberRide',
      initialRoute: '/register',
      routes: {
        '/': (context) => const HomeScreen(),
        '/request': (context) => DriverRequestScreen(),
        '/register': (context) => RegisterScreen(),
      },
      theme: ThemeData(
        useMaterial3: true, // Kích hoạt Material 3
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue), // Bảng màu Material 3
      ),
    );
  }
}