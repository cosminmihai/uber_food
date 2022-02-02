part of auth_actions;

abstract class GetCurrentUserLocation //
    implements
        Built<GetCurrentUserLocation, GetCurrentUserLocationBuilder>,
        AppAction //
{
  factory GetCurrentUserLocation(LatLng result) {
    return _$GetCurrentUserLocation((GetCurrentUserLocationBuilder b) => b.location = result);
  }

  GetCurrentUserLocation._();

  LatLng get location;
}
