import 'package:bloc_social_app/data/vos/app_user_vo.dart';

abstract class ProfileStates {}

class ProfileInitial extends ProfileStates {}

class ProfileLoading extends ProfileStates {}

class ProfileLoaded extends ProfileStates {
  final AppUserVO userProfile;

  ProfileLoaded(this.userProfile);
}

class ProfileError extends ProfileStates {
  final String message;

  ProfileError(this.message);
}
