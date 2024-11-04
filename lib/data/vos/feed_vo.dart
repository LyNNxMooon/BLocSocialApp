import 'package:json_annotation/json_annotation.dart';
part 'feed_vo.g.dart';

@JsonSerializable()
class FeedVO {
  final int id;
  @JsonKey(name: 'user_id')
  final String userUID;
  @JsonKey(name: 'user_name')
  final String userName;
  @JsonKey(name: 'user_profile_image')
  final String userProfileImage;
  final String feed;
  final DateTime timestamp;

  FeedVO(
      {required this.id,
      required this.userUID,
      required this.userName,
      required this.userProfileImage,
      required this.feed,
      required this.timestamp});

  factory FeedVO.fromJson(Map<String, dynamic> json) => _$FeedVOFromJson(json);

  Map<String, dynamic> toJson() => _$FeedVOToJson(this);
}
