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

/*
        "timings": "11am \u2013 11pm (Mon-Sun)",
        "average_cost_for_two": 300,
        "currency": "Rs.",
        "highlights": [
          "Dinner",
          "Delivery",
          "Credit Card",
          "Lunch",
          "Cash",
          "Takeaway Available",
          "Debit Card",
          "Indoor Seating",
          "Air Conditioned",
          "Digital Payments Accepted"
        ],
        "all_reviews_count": 40,
        "photos_url": "https:\/\/www.zomato.com\/thiruvalla\/the-beirut-blends-thiruvalla-locality\/photos?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1#tabtop",
        "photo_count": 47,
        "menu_url": "https:\/\/www.zomato.com\/thiruvalla\/the-beirut-blends-thiruvalla-locality\/menu?utm_source=api_basic_user&utm_medium=api&utm_campaign=v2.1&openSwipeBox=menu&showMinimal=1#tabtop",
        "featured_image": "",
        "has_online_delivery": 1,
        "phone_numbers": "+91 7510731425, +91 8086994927",
*/

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<Restaurant> get serializer => _$restaurantSerializer;
}
