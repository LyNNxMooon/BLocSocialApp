import 'package:bloc_social_app/BLoc/cubits/auth/auth_cubit.dart';
import 'package:bloc_social_app/widgets/button_widget.dart';
import 'package:bloc_social_app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key, required this.toggleScreens});

  final void Function()? toggleScreens;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  final _nameController = TextEditingController();

  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
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
                    "Let's create an account for you",
                    style: TextStyle(
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const Gap(25),
                  CustomTextField(
                      controller: _nameController,
                      hintText: "Name",
                      isObscure: false),
                  const Gap(10),
                  CustomTextField(
                      controller: _emailController,
                      hintText: "Email",
                      isObscure: false),
                  const Gap(10),
                  CustomTextField(
                      controller: _passwordController,
                      hintText: "Password",
                      isObscure: true),
                  const Gap(10),
                  CustomTextField(
                      controller: _confirmPasswordController,
                      hintText: "Confirm Password",
                      isObscure: true),
                  const Gap(25),
                  CustomButtonWidget(
                    functionName: "Register",
                    function: () => authCubit.register(
                        _nameController.text,
                        _emailController.text,
                        _passwordController.text,
                        _confirmPasswordController.text,
                        context),
                  ),
                  const Gap(50),
                  GestureDetector(
                    onTap: widget.toggleScreens,
                    child: RichText(
                      text: TextSpan(
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Already a member? ',
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                          TextSpan(
                              text: 'Login Now',
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
