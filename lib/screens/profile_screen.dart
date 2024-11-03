import 'package:bloc_social_app/BLoc/cubits/profile/profile_cubit.dart';
import 'package:bloc_social_app/BLoc/cubits/profile/profile_states.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, required this.userID});

  final String userID;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  late final profileCubit = context.read<ProfileCubit>();

  @override
  void initState() {
    profileCubit.fetchUserProfile(widget.userID);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileCubit, ProfileStates>(
      builder: (context, profileState) {
        if (profileState is ProfileLoading) {
          return const SafeArea(
            child: Scaffold(
              body: Center(
                child: CupertinoActivityIndicator(),
              ),
            ),
          );
        } else if (profileState is ProfileLoaded) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text("Profile"),
              ),
            ),
          );
        } else {
          return SafeArea(
              child: Scaffold(
            body: Center(
              child: Text("No Profile found..."),
            ),
          ));
        }
      },
    );
  }
}
