import 'package:bloc_social_app/data/vos/app_user_vo.dart';

abstract class ProfileRepo {
  Future<AppUserVO?> fetchUserProfile(String uid);

  Future<void> updateUserProfile(AppUserVO updatedProfile);
}
