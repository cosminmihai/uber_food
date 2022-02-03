library serializer;

import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:location/location.dart';
import 'package:uber_food/models/index.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  AppUser,
  AuthState,
  Restaurant,
  RestaurantLocation,
  RestaurantsState,
  UsersRating,
  Review,
  FavoriteRestaurant,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..add(IntSerializer())
      ..add(LocationDataSerializer())
      ..add(BoolSerializer())
      ..add(DoubleSerializer())
      ..addPlugin(StandardJsonPlugin()))
    .build();

class IntSerializer implements PrimitiveSerializer<int> {
  final bool structured = false;
  @override
  final Iterable<Type> types = <Type>[int];
  @override
  final String wireName = 'int';

  @override
  Object serialize(Serializers serializers, int integer, {FullType specifiedType = FullType.unspecified}) {
    return integer;
  }

  @override
  int deserialize(Serializers serializers, Object serialized, {FullType specifiedType = FullType.unspecified}) {
    if (serialized is String) {
      final int? result = int.tryParse(serialized);
      return result ?? int.parse(serialized, radix: 16);
    } else {
      return serialized as int;
    }
  }
}

class DoubleSerializer implements PrimitiveSerializer<double> {
  static const String nan = 'NaN';
  static const String infinity = 'INF';
  static const String negativeInfinity = '-INF';

  final bool structured = false;
  @override
  final Iterable<Type> types = <Type>[double];
  @override
  final String wireName = 'double';

  @override
  Object serialize(Serializers serializers, double aDouble, {FullType specifiedType = FullType.unspecified}) {
    if (aDouble.isNaN) {
      return nan;
    } else if (aDouble.isInfinite) {
      return aDouble.isNegative ? negativeInfinity : infinity;
    } else {
      return aDouble;
    }
  }

  @override
  double deserialize(Serializers serializers, Object serialized, {FullType specifiedType = FullType.unspecified}) {
    if (serialized is String) {
      return double.parse(serialized);
    } else if (serialized == nan) {
      return double.nan;
    } else if (serialized == negativeInfinity) {
      return double.negativeInfinity;
    } else if (serialized == infinity) {
      return double.infinity;
    } else {
      return (serialized as num).toDouble();
    }
  }
}

class BoolSerializer implements PrimitiveSerializer<bool> {
  final bool structured = false;
  @override
  final Iterable<Type> types = <Type>[bool];
  @override
  final String wireName = 'bool';

  @override
  Object serialize(Serializers serializers, bool boolean, {FullType specifiedType = FullType.unspecified}) {
    return boolean;
  }

  @override
  bool deserialize(Serializers serializers, Object serialized, {FullType specifiedType = FullType.unspecified}) {
    if (serialized is num) {
      if (serialized == 0) {
        return false;
      } else if (serialized == 1) {
        return true;
      } else {
        throw ArgumentError('This is not a valid boolean value');
      }
    } else {
      return serialized as bool;
    }
  }
}

class LocationDataSerializer implements StructuredSerializer<LocationData> {
  final bool structured = false;
  @override
  final Iterable<Type> types = <Type>[LocationData];
  @override
  final String wireName = 'LocationData';

  @override
  LocationData deserialize(Serializers serializers, Iterable<dynamic> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return LocationData.fromMap(<String, double>{
      'latitude': serialized.elementAt(1),
      'longitude': serialized.elementAt(3),
    });
  }

  @override
  Iterable<dynamic> serialize(Serializers serializers, LocationData serial,
      {FullType specifiedType = FullType.unspecified}) {
    return <dynamic>['latitude', serial.latitude, 'longitude', serial.longitude];
  }
}
