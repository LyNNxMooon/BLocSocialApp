// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedVO _$FeedVOFromJson(Map<String, dynamic> json) => FeedVO(
      id: (json['id'] as num).toInt(),
      userUID: json['user_id'] as String,
      userName: json['user_name'] as String,
      userProfileImage: json['user_profile_image'] as String,
      feed: json['feed'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$FeedVOToJson(FeedVO instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userUID,
      'user_name': instance.userName,
      'user_profile_image': instance.userProfileImage,
      'feed': instance.feed,
      'timestamp': instance.timestamp.toIso8601String(),
    };
