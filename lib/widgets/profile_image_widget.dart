import 'package:bloc_social_app/constants/images.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: kProfileURL,
      placeholder: (context, url) => const CupertinoActivityIndicator(),
      errorWidget: (context, url, error) => Icon(
        Icons.person,
        size: 60,
        color: Theme.of(context).colorScheme.primary,
      ),
      imageBuilder: (context, imageProvider) => Container(
        width: 140,
        height: 140,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover)),
      ),
    );
  }
}
