import 'package:bloc_social_app/BLoC/cubits/profile/profile_cubit.dart';
import 'package:bloc_social_app/BLoC/cubits/profile/profile_states.dart';

import 'package:bloc_social_app/screens/edit_profile_screen.dart';
import 'package:bloc_social_app/utils/navigation_extension.dart';
import 'package:bloc_social_app/widgets/loading_widget.dart';
import 'package:bloc_social_app/widgets/profile_image_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

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
          return CustomLoadingWidget();
        } else if (profileState is ProfileLoaded) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: Text(profileState.userProfile.name),
                foregroundColor: Theme.of(context).colorScheme.primary,
                actions: [
                  IconButton(
                      onPressed: () => context.navigateToNext(EditProfileScreen(
                            userProfile: profileState.userProfile,
                          )),
                      icon: Icon(
                        Icons.settings,
                      ))
                ],
              ),
              body: profileWidget(context, profileState.userProfile.email,
                  profileState.userProfile.bio),
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

  Widget profileWidget(BuildContext context, String userEmail, String userBio) {
    return Center(
      child: Column(
        children: [
          Text(
            userEmail,
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          const Gap(25),
          ProfileImageWidget(),
          const Gap(25),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Bio",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ),
          const Gap(25),
          Container(
            padding: const EdgeInsets.all(25),
            width: double.infinity,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              userBio.isEmpty ? "Empty bio..." : userBio,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          const Gap(25),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Post",
                style: TextStyle(color: Theme.of(context).colorScheme.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
