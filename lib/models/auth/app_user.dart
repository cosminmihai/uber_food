library app_user;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/serializers.dart';

part 'app_user.g.dart';

abstract class AppUser implements Built<AppUser, AppUserBuilder> {
  factory AppUser([void Function(AppUserBuilder b) updates]) = _$AppUser;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AppUser._();

  String get uid;

  String get email;

  @nullable
  String get username;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AppUser> get serializer => _$appUserSerializer;
}
