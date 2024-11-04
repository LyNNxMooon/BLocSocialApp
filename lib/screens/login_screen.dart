import 'package:bloc_social_app/BLoc/cubits/auth/auth_cubit.dart';
import 'package:bloc_social_app/widgets/button_widget.dart';
import 'package:bloc_social_app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key, required this.toggleScreens});

  final void Function()? toggleScreens;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SingleChildScrollView(
              child: Column(
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
                      minLines: 1,
                      maxLines: 1,
                      controller: _passwordController,
                      hintText: "Password",
                      isObscure: true),
                  const Gap(25),
                  CustomButtonWidget(
                    functionName: "Login",
                    function: () => authCubit.login(_emailController.text,
                        _passwordController.text, context),
                  ),
                  const Gap(50),
                  GestureDetector(
                    onTap: widget.toggleScreens,
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Not a member? ',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                          TextSpan(
                              text: 'Register Now',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .inversePrimary,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
