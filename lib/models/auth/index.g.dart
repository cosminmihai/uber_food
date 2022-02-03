// GENERATED CODE - DO NOT MODIFY BY HAND

part of auth_models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppUser$ _$$_AppUser$FromJson(Map<String, dynamic> json) => _$_AppUser$(
      uid: json['uid'] as String,
      email: json['email'] as String,
      username: json['username'] as String,
      photoUrl: json['photoUrl'] as String?,
    );

Map<String, dynamic> _$$_AppUser$ToJson(_$_AppUser$ instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'username': instance.username,
      'photoUrl': instance.photoUrl,
    };
