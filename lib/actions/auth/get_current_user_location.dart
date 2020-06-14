library get_current_user_location;

import 'package:built_value/built_value.dart';
import 'package:location/location.dart';
import 'package:uber_food/actions/actions.dart';

part 'get_current_user_location.g.dart';

abstract class GetCurrentUserLocation //
    implements
        Built<GetCurrentUserLocation, GetCurrentUserLocationBuilder>,
        AppAction //
{
  factory GetCurrentUserLocation(ActionResult result){
    return _$GetCurrentUserLocation((GetCurrentUserLocationBuilder b)=> b.result = result);
  }

  GetCurrentUserLocation._();
  ActionResult get result;
}

abstract class GetCurrentUserLocationSuccessful //
    implements
        Built<GetCurrentUserLocationSuccessful, GetCurrentUserLocationSuccessfulBuilder>,
        AppAction //
{
  factory GetCurrentUserLocationSuccessful(LocationData location) {
    return _$GetCurrentUserLocationSuccessful((GetCurrentUserLocationSuccessfulBuilder b) {
      b.location = location;
    });
  }

  GetCurrentUserLocationSuccessful._();

  LocationData get location;
}

abstract class GetCurrentUserLocationError //
    implements
        Built<GetCurrentUserLocationError, GetCurrentUserLocationErrorBuilder>,
        ErrorAction //
{
  factory GetCurrentUserLocationError(Object error) {
    return _$GetCurrentUserLocationError((GetCurrentUserLocationErrorBuilder b) => b.error = error);
  }

  GetCurrentUserLocationError._();

  @override
  Object get error;
}
