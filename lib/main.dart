import 'package:flutter/material.dart';
import 'package:multi_role_base_app/screens/home_screen.dart';
import 'package:multi_role_base_app/screens/login_screen.dart';
import 'package:multi_role_base_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
