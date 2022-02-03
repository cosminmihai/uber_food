part of restaurant_models;

@freezed
class Restaurant with _$Restaurant {
  const factory Restaurant({
    required String id,
    required String name,
    required String url,
    required RestaurantLocation location,
    @JsonKey(name: 'user_rating') required UsersRating usersRating,
    @JsonKey(name: 'has_online_delivery') required bool hasOnlineDelivery,
    required List<String> cuisines,
    required String timings,
    required String currency,
    @JsonKey(name: 'featured_image') String? featuredPhoto,
    required List<String> phoneNumbers,
    required List<String> highlights,
    @JsonKey(name: 'menu_url') required String menuUrl,
  }) = _Restaurant$;

  factory Restaurant.fromJson(Map<dynamic, dynamic> json) => _$RestaurantFromJson(Map<String, dynamic>.from(json));
}
