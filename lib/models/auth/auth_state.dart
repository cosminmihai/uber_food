part of auth_models;

abstract class AuthState implements Built<AuthState, AuthStateBuilder> {
  factory AuthState.initialState() {
    return _$AuthState((AuthStateBuilder b) {
      b.user = null;
    });
  }

  factory AuthState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  AuthState._();

  AppUser? get user;

  BuiltMap<String, AppUser> get usersForReviews;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AuthState> get serializer => _$authStateSerializer;
}
