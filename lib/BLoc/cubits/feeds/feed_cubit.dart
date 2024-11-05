import 'package:bloc_social_app/BLoC/cubits/feeds/feed_states.dart';
import 'package:bloc_social_app/constants/images.dart';
import 'package:bloc_social_app/data/vos/feed_vo.dart';
import 'package:bloc_social_app/domain/feed_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeedCubit extends Cubit<FeedStates> {
  final FeedRepo feedRepo;

  FeedCubit({required this.feedRepo}) : super(FeedsInitial());

  //Upload a new post

  Future<void> createNewFeed(String userUID, String userName, String feedBody,
      BuildContext context) async {
    if (feedBody.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please enter whats on your mind"),
      ));
    } else {
      try {
        int id = DateTime.now().millisecondsSinceEpoch;

        final newFeed = FeedVO(
            id: id,
            userUID: userUID,
            userName: userName,
            userProfileImage: kProfileURL,
            feed: feedBody,
            timestamp: DateTime.now());

        feedRepo.createFeed(newFeed);
        await fetchAllFeeds();
      } catch (error) {
        emit(FeedsError("Error uploading feed: $error"));
      }
    }
  }

  //fetch all feeds

  Future<void> fetchAllFeeds() async {
    emit(FeedsLoading());
    try {
      final feeds = await feedRepo.fetchAllFeed();
      emit(FeedsLoaded(feeds));
    } catch (error) {
      emit(FeedsError("Error fetching all feeds: $error"));
    }
  }

  //Delete a feed

  Future<void> deleteFeed(int feedId) async {
    try {
      feedRepo.deleteFeed(feedId);
      await fetchAllFeeds();
    } catch (error) {}
  }
}
