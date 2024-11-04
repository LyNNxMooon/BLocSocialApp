// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedVO _$FeedVOFromJson(Map<String, dynamic> json) => FeedVO(
      id: (json['id'] as num).toInt(),
      userUID: json['user_id'] as String,
      userName: json['user_name'] as String,
      feed: json['feed'] as String,
      timestamp: DateTime.fromMillisecondsSinceEpoch(json['timestamp'] as int),
    );

Map<String, dynamic> _$FeedVOToJson(FeedVO instance) => <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userUID,
      'user_name': instance.userName,
      'feed': instance.feed,
      'timestamp': instance.timestamp.millisecondsSinceEpoch,
    };
