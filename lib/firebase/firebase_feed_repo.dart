import 'package:bloc_social_app/data/vos/feed_vo.dart';
import 'package:bloc_social_app/domain/feed_repository.dart';
import 'package:firebase_database/firebase_database.dart';

class FirebaseFeedRepo implements FeedRepo {
  final databaseRef = FirebaseDatabase.instance.ref();

  //Upload a feed

  @override
  Future<void> createFeed(FeedVO feed) async {
    try {
      await databaseRef
          .child("feeds")
          .child(feed.id.toString())
          .set(feed.toJson());
    } catch (error) {
      throw Exception("Error creating feed: $error");
    }
  }

  //Delete a feed

  @override
  Future<void> deleteFeed(int feedId) async {
    await databaseRef.child("feeds").child(feedId.toString()).remove();
  }

  //fetch all feeds

  @override
  Future<List<FeedVO>> fetchAllFeed() async {
    try {
      final snapshot =
          await databaseRef.child("feeds").orderByChild('timestamp').once();
      return snapshot.snapshot.children.map<FeedVO>((snapshot) {
        return FeedVO.fromJson(
            Map<String, dynamic>.from(snapshot.value as Map));
      }).toList();
    } catch (error) {
      throw Exception("Error fetching feeds: $error");
    }
  }

  //fetch feeds by a specific user

  @override
  Future<List<FeedVO>> fetchFeedsByUserID(String userUID) async {
    try {
      final snapshot = await databaseRef.child("feeds").once();
      return snapshot.snapshot.children
          .map<FeedVO?>((snapshot) {
            final feed = FeedVO.fromJson(
                Map<String, dynamic>.from(snapshot.value as Map));

            return feed.userUID == userUID ? feed : null;
          })
          .whereType<FeedVO>()
          .toList();
    } catch (error) {
      throw Exception("Error fetching feeds by user: $error");
    }
  }
}
