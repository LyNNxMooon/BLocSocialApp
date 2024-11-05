import 'package:bloc_social_app/BLoC/cubits/auth/auth_cubit.dart';
import 'package:bloc_social_app/BLoC/cubits/feeds/feed_cubit.dart';
import 'package:bloc_social_app/BLoC/cubits/feeds/feed_states.dart';
import 'package:bloc_social_app/BLoC/cubits/profile/profile_cubit.dart';
import 'package:bloc_social_app/BLoC/cubits/profile/profile_states.dart';

import 'package:bloc_social_app/utils/navigation_extension.dart';
import 'package:bloc_social_app/widgets/feed_avatar_widget.dart';
import 'package:bloc_social_app/widgets/loading_widget.dart';
import 'package:bloc_social_app/widgets/text_field_widget.dart';

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
              actions: [
                SizedBox(
                  width: 75,
                  height: 30,
                  child: ElevatedButton(
                      onPressed: () => feedCubit.createNewFeed(
                          authCubit.currentUser?.uid ?? "",
                          authCubit.currentUser?.name ?? "",
                          _feedBodyController.text,
                          context),
                      child: Text(
                        "Post",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.inversePrimary,
                            fontSize: 12),
                      )),
                )
              ],
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
      listener: (context, feedState) {
        if (feedState is FeedsLoaded) context.navigateBack();
      },
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
                FeedAvatarWidget(),
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
