import 'package:bloc_social_app/data/vos/app_user_vo.dart';

abstract class AuthRepo {
  Future<AppUserVO?> loginWithEmailAndPassword(String email, String password);

  Future<AppUserVO?> registerAppUser(
      String name, String email, String password);

  Future<void> logout();

  Future<AppUserVO?> getCurrentUser();
}
