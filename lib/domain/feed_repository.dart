import 'package:bloc_social_app/data/vos/feed_vo.dart';

abstract class FeedRepo {
  Future<List<FeedVO>> fetchAllFeed();

  Future<void> createFeed(FeedVO feed);

  Future<void> deleteFeed(int feedId);

  Future<List<FeedVO>> fetchFeedsByUserID(String userUID);
}
