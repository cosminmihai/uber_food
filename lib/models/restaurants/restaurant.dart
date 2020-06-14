library restaurant;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/restaurants/restaurant_location.dart';
import 'package:uber_food/models/restaurants/user_rating.dart';
import 'package:uber_food/models/serializers.dart';

part 'restaurant.g.dart';

abstract class Restaurant implements Built<Restaurant, RestaurantBuilder> {
  factory Restaurant() = _$Restaurant;

  factory Restaurant.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  Restaurant._();

  String get id;

  String get name;

  String get url;

  RestaurantLocation get location;

  @BuiltValueField(wireName: 'user_rating')
  UserRating get userRating;

  @BuiltValueField(wireName: 'has_online_delivery')
  bool get hasOnlineDelivery;

  BuiltList<String> get cuisines;

  String get timings;

  String get currency;

  @BuiltValueField(wireName: 'featured_image')
  String get featuredPhoto;

  BuiltList<String> get phoneNumbers;

  BuiltList<String> get highlights;

  @nullable
  int get votes;

/*
        "photos_url": "https:\/\/www.zomato.com\/thiruvalla\/the-beirut-blends-thiruvalla-locality\/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop",
        "photo_count": 47,
        "menu_url": "https:\/\/www.zomato.com\/thiruvalla\/the-beirut-blends-thiruvalla-locality\/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop",
*/

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Restaurant> get serializer => _$restaurantSerializer;
}
