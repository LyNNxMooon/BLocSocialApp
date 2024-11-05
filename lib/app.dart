import 'package:bloc_social_app/BLoC/cubits/auth/auth_cubit.dart';
import 'package:bloc_social_app/BLoC/cubits/auth/auth_states.dart';
import 'package:bloc_social_app/BLoC/cubits/feeds/feed_cubit.dart';
import 'package:bloc_social_app/BLoC/cubits/profile/profile_cubit.dart';
import 'package:bloc_social_app/firebase/firebase_feed_repo.dart';
import 'package:bloc_social_app/firebase/firebase_profile_repo.dart';
import 'package:bloc_social_app/themes/light_mode.dart';
import 'package:bloc_social_app/firebase/firebase_auth_repo.dart';
import 'package:bloc_social_app/screens/auth_screen.dart';
import 'package:bloc_social_app/screens/feed_screen.dart';
import 'package:bloc_social_app/widgets/loading_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final authRepo = FirebaseAuthRepo();
  final profileRepo = FirebaseProfileRepo();
  final feedRepo = FirebaseFeedRepo();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (context) => AuthCubit(authRepo: authRepo)..checkAuth(),
        ),
        BlocProvider<ProfileCubit>(
          create: (context) => ProfileCubit(profileRepo: profileRepo),
        ),
        BlocProvider<FeedCubit>(
          create: (context) => FeedCubit(feedRepo: feedRepo),
        )
      ],
      child: MaterialApp(
          theme: lightMode,
          debugShowCheckedModeBanner: false,
          home: BlocConsumer<AuthCubit, AuthStates>(
            builder: (context, authState) {
              return authState is Unauthenticated
                  ? const AuthScreen()
                  : authState is Authenticated
                      ? const FeedScreen()
                      : const CustomLoadingWidget();
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
