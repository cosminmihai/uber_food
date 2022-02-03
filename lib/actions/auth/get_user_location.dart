part of auth_actions;

const String _kGetUserLocationPendingId = 'GetUserLocation';

@freezed
class GetUserLocation with _$GetUserLocation implements AppAction {
  @Implements<ActionStart>()
  const factory GetUserLocation.start({
    @Default(_kGetUserLocationPendingId) String pendingId,
  }) = GetUserLocationStart;

  const factory GetUserLocation.update(LatLng location) = GetUserLocationUpdate;

  @Implements<ActionDone>()
  const factory GetUserLocation.successful(
    LatLng location, [
    @Default(_kGetUserLocationPendingId) String pendingId,
  ]) = GetUserLocationSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetUserLocation.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetUserLocationPendingId) String pendingId,
  ]) = GetUserLocationError;

  static String get pendingKey => _kGetUserLocationPendingId;
}
