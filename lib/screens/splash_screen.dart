import 'dart:async';
import 'package:flutter/material.dart';
import 'package:multi_role_base_app/screens/home_screen.dart';
import 'package:multi_role_base_app/screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;

    if (isLogin) {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen()));
      });
    } else {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage(
              'https://images.pexels.com/photos/17026701/pexels-photo-17026701/free-photo-of-light-sea-landscape-sunset.jpeg?auto=compress&cs=tinysrgb&w=1600&lazy=load')),
    );
  }
}
