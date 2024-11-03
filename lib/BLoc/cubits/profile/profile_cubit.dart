import 'package:bloc_social_app/BLoc/cubits/profile/profile_states.dart';
import 'package:bloc_social_app/data/vos/app_user_vo.dart';
import 'package:bloc_social_app/domain/profile_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileStates> {
  final ProfileRepo profileRepo;

  ProfileCubit({required this.profileRepo}) : super(ProfileInitial());

  //Fetch User Profile

  Future<void> fetchUserProfile(String uid) async {
    try {
      emit(ProfileLoading());

      final user = await profileRepo.fetchUserProfile(uid);

      user == null
          ? emit(ProfileError("User not found"))
          : emit(ProfileLoaded(user));
    } catch (error) {
      emit(ProfileError(error.toString()));
    }
  }

  //Update user profile

  Future<void> updateUserProfile({required String uid, String? newBio}) async {
    emit(ProfileLoading());

    try {
      final currentUser = await profileRepo.fetchUserProfile(uid);

      if (currentUser == null) {
        emit(ProfileError("Failed to fetch user to update profile"));
        return;
      }

      final updatedProfile = AppUserVO(
          uid: uid,
          email: currentUser.email,
          name: currentUser.name,
          bio: newBio ?? "");

      await profileRepo.updateUserProfile(updatedProfile);

      await fetchUserProfile(uid);
    } catch (error) {
      emit(ProfileError("Error updating profile : $error"));
    }
  }
}
