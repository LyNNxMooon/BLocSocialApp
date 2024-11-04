import 'package:bloc_social_app/BLoc/cubits/profile/profile_cubit.dart';
import 'package:bloc_social_app/BLoc/cubits/profile/profile_states.dart';
import 'package:bloc_social_app/constants/images.dart';
import 'package:bloc_social_app/screens/edit_profile_screen.dart';
import 'package:bloc_social_app/utils/navigation_extension.dart';
import 'package:bloc_social_app/widgets/loading_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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
          CachedNetworkImage(
            imageUrl: kProfileURL,
            placeholder: (context, url) => const CupertinoActivityIndicator(),
            errorWidget: (context, url, error) => Icon(
              Icons.person,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            imageBuilder: (context, imageProvider) => Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image:
                      DecorationImage(image: imageProvider, fit: BoxFit.cover)),
            ),
          ),
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
