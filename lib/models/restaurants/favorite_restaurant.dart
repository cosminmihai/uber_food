library favorite_restaurant;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/restaurants/restaurant.dart';
import 'package:uber_food/models/serializers.dart';

part 'favorite_restaurant.g.dart';

abstract class FavoriteRestaurant implements Built<FavoriteRestaurant, FavoriteRestaurantBuilder> {
  factory FavoriteRestaurant({@required String id, @required Restaurant restaurantData, @required String userId}) {
    return _$FavoriteRestaurant((FavoriteRestaurantBuilder b) {
      b
        ..id = id
        ..restaurantData = restaurantData.toBuilder()
        ..userId = userId;
    });
  }

  factory FavoriteRestaurant.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  FavoriteRestaurant._();

  String get id;

  Restaurant get restaurantData;

  String get userId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<FavoriteRestaurant> get serializer => _$favoriteRestaurantSerializer;
}
