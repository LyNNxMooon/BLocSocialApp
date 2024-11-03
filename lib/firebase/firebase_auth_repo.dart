import 'package:bloc_social_app/data/vos/app_user_vo.dart';
import 'package:bloc_social_app/domain/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseAuthRepo implements AuthRepo {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final databaseRef = FirebaseDatabase.instance.ref();

  //get current user

  @override
  Future<AppUserVO?> getCurrentUser() async {
    final currentUser = _firebaseAuth.currentUser;

    if (currentUser == null) {
      return null;
    }

    return AppUserVO(
        uid: currentUser.uid,
        email: currentUser.email ?? "",
        name: "",
        bio: "");
  }

  // login user

  @override
  Future<AppUserVO?> loginWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);

      AppUserVO user = AppUserVO(
          uid: userCredential.user?.uid ?? "", email: email, name: "", bio: "");

      return user;
    } catch (error) {
      throw Exception("Login Failed: $error");
    }
  }

  //logout user

  @override
  Future<void> logout() async {
    await _firebaseAuth.signOut();
  }

  //Register User

  @override
  Future<AppUserVO?> registerAppUser(
      String name, String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);

      AppUserVO user = AppUserVO(
          uid: userCredential.user?.uid ?? "",
          email: email,
          name: name,
          bio: "");

      await databaseRef.child("users").child(user.uid).set(user.toJson());

      return user;
    } catch (error) {
      throw Exception("Register Failed: $error");
    }
  }
}
