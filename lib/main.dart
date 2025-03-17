import 'package:flutter/cupertino.dart';
import './screens/home_screen.dart';
import './screens/driver_request_screen.dart';
import './screens/register_screen.dart';
import './screens/profile_creation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'SoberRide',
      initialRoute: '/profile_creation',
      routes: {
        '/': (context) => const HomeScreen(),
        '/request': (context) => DriverRequestScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile_creation': (context) => ProfileCreationScreen(),
      },
    );
  }
}