library auth_state;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/models/serializers.dart';
import 'package:built_collection/built_collection.dart';

part 'auth_state.g.dart';

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState.initialState() {
    return _$AuthState((AuthStateBuilder b) {
      b.user = null;
    });
  }

  factory AuthState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  AuthState._();

  @nullable
  AppUser get user;

  BuiltMap<String, AppUser> get usersForReviews;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
