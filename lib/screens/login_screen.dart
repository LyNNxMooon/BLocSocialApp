import 'package:bloc_social_app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.lock_open_outlined,
                size: 80,
                color: Theme.of(context).colorScheme.primary,
              ),
              const Gap(50),
              Text(
                "Welcome back. You've been missed!",
                style: TextStyle(
                  fontSize: 16,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              const Gap(25),
              CustomTextField(
                  controller: _emailController,
                  hintText: "Email",
                  isObscure: false),
              const Gap(10),
              CustomTextField(
                  controller: _passwordController,
                  hintText: "Password",
                  isObscure: true)
            ],
          ),
        ),
      ),
    );
  }
}
