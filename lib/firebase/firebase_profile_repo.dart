import 'package:bloc_social_app/data/vos/app_user_vo.dart';
import 'package:bloc_social_app/domain/profile_repository.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseProfileRepo implements ProfileRepo {
  final databaseRef = FirebaseDatabase.instance.ref();

  //Fetch User Profile

  @override
  Future<AppUserVO?> fetchUserProfile(String uid) async {
    try {
      return databaseRef.child("users").child(uid).once().then((event) {
        if (event.snapshot.value == null) {
          return null;
        } else {
          final rawData = event.snapshot.value;
          return AppUserVO.fromJson(Map<String, dynamic>.from(rawData as Map));
        }
      });
    } catch (error) {
      return null;
    }
  }

  //Update User Profile

  @override
  Future<void> updateUserProfile(AppUserVO updatedProfile) async {
    try {
      await databaseRef
          .child("users")
          .child(updatedProfile.uid)
          .set(updatedProfile.toJson());
    } catch (error) {
      throw Exception(error);
    }
  }
}
