library get_current_user_location;

import 'package:built_value/built_value.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_food/actions/actions.dart';

part 'get_current_user_location.g.dart';

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
