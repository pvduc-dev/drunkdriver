import 'package:drunkdriver/screens/otp_screen.dart';
import 'package:drunkdriver/screens/profile_creation_screen.dart';
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
      initialRoute: '/profile-creation',
      routes: {
        '/': (context) => const HomeScreen(),
        '/request': (context) => DriverRequestScreen(),
        '/register': (context) => RegisterScreen(),
        '/otp': (context) => OtpScreen(),
        '/profile-creation': (context) => ProfileCreationScreen(),
      },
      theme: ThemeData(
        useMaterial3: true, // Kích hoạt Material 3
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ), // Bảng màu Material 3
      ),
    );
  }
}
