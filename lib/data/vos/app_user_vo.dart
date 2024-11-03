import 'package:json_annotation/json_annotation.dart';
part 'app_user_vo.g.dart';

@JsonSerializable()
class AppUserVO {
  final String uid;
  final String email;
  final String name;
  final String bio;

  AppUserVO(
      {required this.uid,
      required this.email,
      required this.name,
      required this.bio});

  factory AppUserVO.fromJson(Map<String, dynamic> json) =>
      _$AppUserVOFromJson(json);

  Map<String, dynamic> toJson() => _$AppUserVOToJson(this);
}
