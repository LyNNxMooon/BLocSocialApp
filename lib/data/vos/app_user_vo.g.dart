// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_user_vo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUserVO _$AppUserVOFromJson(Map<String, dynamic> json) => AppUserVO(
      uid: json['uid'] as String,
      email: json['email'] as String,
      name: json['name'] as String,
      bio: json['bio'] as String,
    );

Map<String, dynamic> _$AppUserVOToJson(AppUserVO instance) => <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'name': instance.name,
      'bio': instance.bio,
    };
