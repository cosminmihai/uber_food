library serializer;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:uber_food/models/auth/auth_state.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';
import 'package:uber_food/models/restaurants/restaurant_location.dart';
import 'package:uber_food/models/restaurants/restaurants_state.dart';
import 'package:uber_food/models/restaurants/user_rating.dart';

part 'serializers.g.dart';

@SerializersFor(<Type>[
  AppState,
  AppUser,
  AuthState,
  Restaurant,
  RestaurantLocation,
  RestaurantsState,
  UserRating,
])
Serializers serializers = (_$serializers.toBuilder() //
      ..add(IntSerializer())
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
      final int result = int.tryParse(serialized);
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
