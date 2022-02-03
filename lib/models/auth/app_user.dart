part of auth_models;

@freezed
class AppUser with _$AppUser {
  const factory AppUser({
    required String uid,
    required String email,
    required String username,
    String? photoUrl,
    @JsonKey(ignore: true) LatLng? currentLocation,
  }) = _AppUser$;

  factory AppUser.fromJson(Map<dynamic, dynamic> json) => _$AppUserFromJson(Map<String, dynamic>.from(json));
}
