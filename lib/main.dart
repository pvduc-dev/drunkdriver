import 'package:drunkdriver/screens/driver_request_screen.dart';
import 'package:drunkdriver/screens/main_screen.dart';
import 'package:drunkdriver/screens/otp_screen.dart';
import 'package:drunkdriver/screens/profile_creation_screen.dart';
import 'package:drunkdriver/screens/register_screen.dart';
import 'package:drunkdriver/screens/booking_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/api_provider.dart';

void main() {
  runApp(const DrunkApp());
}

class DrunkApp extends StatelessWidget {
  const DrunkApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider(create: (context) => ApiProvider())],
      child: MaterialApp(
        title: 'SoberRide',
        initialRoute: '/register',
        routes: {
          '/': (context) => MainScreen(),
          '/request': (context) => DriverRequestScreen(),
          '/register': (context) => RegisterScreen(),
          '/otp': (context) => OtpScreen(),
          '/profile-creation': (context) => ProfileCreationScreen(),
          '/booking': (context) => BookingScreen(),
        },
        theme: ThemeData(
          fontFamily: 'SF Pro Display',
          textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
