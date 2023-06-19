// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      username: json['username'] as String?,
      fullname: json['fullname'] as String?,
      email: json['email'] as String?,
      password: json['password'] as String?,
      userId: json['_id'] as String?,
      uid: json['uid'] as int? ?? 0,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'uid': instance.uid,
      '_id': instance.userId,
      'username': instance.username,
      'fullname': instance.fullname,
      'email': instance.email,
      'password': instance.password,
    };
