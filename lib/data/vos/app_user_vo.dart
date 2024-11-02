import 'package:json_annotation/json_annotation.dart';
part 'app_user_vo.g.dart';

@JsonSerializable()
class AppUserVO {
  final String uid;
  final String email;
  final String name;

  AppUserVO({required this.uid, required this.email, required this.name});

  factory AppUserVO.fromJson(Map<String, dynamic> json) =>
      _$AppUserVOFromJson(json);

  Map<String, dynamic> toJson() => _$AppUserVOToJson(this);
}
