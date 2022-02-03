part of auth_actions;

@freezed
class SetUserLocation with _$SetUserLocation implements AppAction {
  const factory SetUserLocation(LatLng location) = SetUserLocation$;
}
