// ignore_for_file: deprecated_member_use

import 'package:bloc_social_app/BLoC/cubits/feeds/feed_cubit.dart';
import 'package:bloc_social_app/data/vos/feed_vo.dart';

import 'package:bloc_social_app/screens/upload_feed_screen.dart';
import 'package:bloc_social_app/utils/navigation_extension.dart';
import 'package:bloc_social_app/widgets/drawer_widget.dart';
import 'package:bloc_social_app/widgets/feed_avatar_widget.dart';
import 'package:bloc_social_app/widgets/loading_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../BLoC/cubits/feeds/feed_states.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({super.key});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  late final feedCubit = context.read<FeedCubit>();

  @override
  void initState() {
    feedCubit.fetchAllFeeds();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        foregroundColor: Theme.of(context).colorScheme.primary,
        centerTitle: true,
        title: Text("News Feed"),
        actions: [
          IconButton(
              onPressed: () => context.navigateToNext(const FeedUploadScreen()),
              icon: Icon(Icons.add))
        ],
      ),
      drawer: const CustomDrawerWidget(),
      body: BlocBuilder<FeedCubit, FeedStates>(
        builder: (context, feedState) {
          if (feedState is FeedsLoading || feedState is FeedUploading) {
            return const CustomLoadingWidget();
          } else if (feedState is FeedsLoaded) {
            if (feedState.feeds.isEmpty) {
              return const Center(
                child: Text("No Feeds available..."),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ListView.separated(
                  itemBuilder: (context, index) =>
                      feedCard(feedState.feeds[index]),
                  itemCount: feedState.feeds.length,
                  separatorBuilder: (context, index) => const Gap(15),
                ),
              );
            }
          } else if (feedState is FeedsError) {
            return Center(
              child: Text(feedState.message),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    ));
  }

  Widget feedCard(FeedVO feed) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1), // Shadow color
            spreadRadius: 3, // Spread radius
            blurRadius: 5, // Blur radius
            offset: const Offset(0, 3), // Offset of the shadow
          ),
        ], //border corner radius
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  FeedAvatarWidget(),
                  const Gap(10),
                  Text(
                    feed.userName,
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz,
                    color: Theme.of(context).colorScheme.primary,
                  ))
            ],
          ),
          const Gap(25),
          Text(feed.feed),
          const Gap(25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.thumb_up_alt_outlined,
                        size: 18, color: Theme.of(context).colorScheme.primary),
                    const Gap(5),
                    Text(
                      "Like",
                      style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment_outlined,
                        size: 18, color: Theme.of(context).colorScheme.primary),
                    const Gap(5),
                    Text(
                      "Comment",
                      style: TextStyle(
                          fontSize: 13,
                          color: Theme.of(context).colorScheme.primary),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
