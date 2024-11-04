import 'package:bloc_social_app/screens/upload_feed_screen.dart';
import 'package:bloc_social_app/utils/navigation_extension.dart';
import 'package:bloc_social_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

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
                onPressed: () =>
                    context.navigateToNext(const FeedUploadScreen()),
                icon: Icon(Icons.add))
          ],
        ),
        drawer: const CustomDrawerWidget(),
      ),
    );
  }
}
