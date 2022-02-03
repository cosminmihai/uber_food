part of auth_models;

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    @Default(<String, AppUser>{}) Map<String, AppUser> users,
    AppUser? user,
    LatLng? userLocation,
  }) = _AuthState$;
}
