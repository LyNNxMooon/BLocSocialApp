import 'package:bloc_social_app/BLoc/cubits/auth/auth_cubit.dart';
import 'package:bloc_social_app/BLoc/cubits/feeds/feed_cubit.dart';
import 'package:bloc_social_app/BLoc/cubits/feeds/feed_states.dart';
import 'package:bloc_social_app/BLoc/cubits/profile/profile_cubit.dart';
import 'package:bloc_social_app/BLoc/cubits/profile/profile_states.dart';
import 'package:bloc_social_app/constants/images.dart';
import 'package:bloc_social_app/widgets/loading_widget.dart';
import 'package:bloc_social_app/widgets/text_field_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class FeedUploadScreen extends StatefulWidget {
  const FeedUploadScreen({super.key});

  @override
  State<FeedUploadScreen> createState() => _FeedUploadScreenState();
}

class _FeedUploadScreenState extends State<FeedUploadScreen> {
  final _feedBodyController = TextEditingController();
  late final authCubit = context.read<AuthCubit>();
  late final profileCubit = context.read<ProfileCubit>();
  late final feedCubit = context.read<FeedCubit>();

  @override
  void initState() {
    profileCubit.fetchUserProfile(authCubit.currentUser?.uid ?? '');
    super.initState();
  }

  @override
  void dispose() {
    _feedBodyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FeedCubit, FeedStates>(
      builder: (context, feedState) {
        if (feedState is FeedsLoading || feedState is FeedUploading) {
          return CustomLoadingWidget();
        }

        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              foregroundColor: Theme.of(context).colorScheme.primary,
              centerTitle: true,
              title: Text("Create Feed"),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  const Gap(10),
                  currentUserWidget(),
                  const Gap(20),
                  CustomTextField(
                      minLines: 26,
                      maxLines: 50,
                      controller: _feedBodyController,
                      hintText: "What's on your mind?",
                      isObscure: false)
                ],
              ),
            ),
          ),
        );
      },
      listener: (context, feedState) {},
    );
  }

  Widget currentUserWidget() {
    return BlocBuilder<ProfileCubit, ProfileStates>(
      builder: (context, profileState) {
        if (profileState is ProfileLoaded) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              children: [
                CachedNetworkImage(
                  imageUrl: kProfileURL,
                  placeholder: (context, url) =>
                      const CupertinoActivityIndicator(),
                  errorWidget: (context, url, error) => Icon(
                    Icons.person,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  imageBuilder: (context, imageProvider) => Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover)),
                  ),
                ),
                const Gap(10),
                Text(
                  profileState.userProfile.name,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontSize: 18),
                )
              ],
            ),
          );
        } else {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        }
      },
    );
  }
}
