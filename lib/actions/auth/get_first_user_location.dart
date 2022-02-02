part of auth_actions;

abstract class GetFirstUserLocation //
    implements
        Built<GetFirstUserLocation, GetFirstUserLocationBuilder>,
        AppAction //
{
  factory GetFirstUserLocation() {
    return _$GetFirstUserLocation((GetFirstUserLocationBuilder b) {});
  }

  GetFirstUserLocation._();
}

abstract class GetFirstUserLocationSuccessful //
    implements
        Built<GetFirstUserLocationSuccessful, GetFirstUserLocationSuccessfulBuilder>,
        AppAction //
{
  factory GetFirstUserLocationSuccessful(LatLng location) {
    return _$GetFirstUserLocationSuccessful((GetFirstUserLocationSuccessfulBuilder b) => b.location = location);
  }

  GetFirstUserLocationSuccessful._();

  LatLng get location;
}

abstract class GetFirstUserLocationError //
    implements
        Built<GetFirstUserLocationError, GetFirstUserLocationErrorBuilder>,
        ErrorAction //
{
  factory GetFirstUserLocationError(Object error) {
    return _$GetFirstUserLocationError((GetFirstUserLocationErrorBuilder b) => b.error = error);
  }

  GetFirstUserLocationError._();

  @override
  Object get error;
}
