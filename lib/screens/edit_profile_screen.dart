import 'package:bloc_social_app/BLoc/cubits/profile/profile_cubit.dart';
import 'package:bloc_social_app/BLoc/cubits/profile/profile_states.dart';
import 'package:bloc_social_app/data/vos/app_user_vo.dart';
import 'package:bloc_social_app/utils/navigation_extension.dart';
import 'package:bloc_social_app/widgets/loading_widget.dart';
import 'package:bloc_social_app/widgets/profile_image_widget.dart';
import 'package:bloc_social_app/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key, required this.userProfile});

  final AppUserVO userProfile;

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late TextEditingController _bioController =
      TextEditingController(text: widget.userProfile.bio);
  late TextEditingController _nameController =
      TextEditingController(text: widget.userProfile.name);

  late final profileCubit = context.read<ProfileCubit>();

  @override
  void dispose() {
    _bioController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProfileCubit, ProfileStates>(
      builder: (context, profileSate) {
        return profileSate is ProfileLoading
            ? CustomLoadingWidget()
            : editProfileWidget();
      },
      listener: (context, profileSate) {
        if (profileSate is ProfileLoaded) {
          context.navigateBack();
        }
      },
    );
  }

  Widget editProfileWidget({double uploadProgress = 0.0}) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Edit Profile"),
        foregroundColor: Theme.of(context).colorScheme.primary,
        actions: [
          IconButton(
              onPressed: () => profileCubit.updateUserProfile(
                  uid: widget.userProfile.uid,
                  newBio: _bioController.text,
                  newName: _nameController.text,
                  context: context),
              icon: Icon(Icons.upload))
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          child: Column(
            children: [
              ProfileImageWidget(),
              const Gap(25),
              const Text("Bio"),
              const Gap(10),
              CustomTextField(
                  controller: _bioController,
                  hintText: "User Bio",
                  isObscure: false),
              const Gap(25),
              const Text("New Name"),
              const Gap(10),
              CustomTextField(
                  controller: _nameController,
                  hintText: "User name",
                  isObscure: false),
            ],
          ),
        ),
      ),
    ));
  }
}
