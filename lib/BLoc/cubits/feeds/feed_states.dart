import 'package:bloc_social_app/data/vos/feed_vo.dart';

abstract class FeedStates {}

class FeedsInitial extends FeedStates {}

class FeedsLoading extends FeedStates {}

class FeedUploading extends FeedStates {}

class FeedsError extends FeedStates {
  final String message;
  FeedsError(this.message);
}

class FeedsLoaded extends FeedStates {
  final List<FeedVO> feeds;

  FeedsLoaded(this.feeds);
}
