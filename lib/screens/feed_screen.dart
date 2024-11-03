import 'package:bloc_social_app/widgets/drawer_widget.dart';
import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("News Feed"),
        ),
        drawer: const CustomDrawerWidget(),
      ),
    );
  }
}
