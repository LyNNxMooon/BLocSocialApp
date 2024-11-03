import 'package:bloc_social_app/BLoc/cubits/auth/auth_cubit.dart';
import 'package:bloc_social_app/BLoc/cubits/auth/auth_states.dart';
import 'package:bloc_social_app/themes/light_mode.dart';
import 'package:bloc_social_app/firebase/firebase_auth_repo.dart';
import 'package:bloc_social_app/screens/auth_screen.dart';
import 'package:bloc_social_app/screens/feed_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final authRepo = FirebaseAuthRepo();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(authRepo: authRepo)..checkAuth(),
      child: MaterialApp(
          theme: lightMode,
          debugShowCheckedModeBanner: false,
          home: BlocConsumer<AuthCubit, AuthStates>(
            builder: (context, authState) {
              if (authState is Unauthenticated) {
                return const AuthScreen();
              } else if (authState is Authenticated) {
                return const FeedScreen();
              } else {
                return const SafeArea(
                    child: Scaffold(
                  body: Center(
                    child: CupertinoActivityIndicator(),
                  ),
                ));
              }
            },

            //for listening errors
            listener: (context, authState) {
              if (authState is AuthError) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text(authState.message),
                ));
              }
            },
          )),
    );
  }
}
