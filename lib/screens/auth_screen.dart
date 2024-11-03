import 'package:bloc_social_app/screens/login_screen.dart';
import 'package:bloc_social_app/screens/register_screen.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool isLoginScreen = true;

  void toggleScreens() {
    setState(() {
      isLoginScreen = !isLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoginScreen) {
      return LoginScreen(
        toggleScreens: toggleScreens,
      );
    } else {
      return RegisterScreen(
        toggleScreens: toggleScreens,
      );
    }
  }
}
