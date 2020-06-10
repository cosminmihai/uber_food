library restaurant_location;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/serializers.dart';

part 'restaurant_location.g.dart';

abstract class RestaurantLocation implements Built<RestaurantLocation, RestaurantLocationBuilder> {
  factory RestaurantLocation([void Function(RestaurantLocationBuilder b) updates]) = _$RestaurantLocation;

  factory RestaurantLocation.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  RestaurantLocation._();

  String get address;

  String get locality;

  String get city;

  double get latitude;

  double get longitude;

  @BuiltValueField(wireName: 'locality_verbose')
  String get localityVerbose;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<RestaurantLocation> get serializer => _$restaurantLocationSerializer;
}
