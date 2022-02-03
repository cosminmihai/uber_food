part of restaurant_models;

@freezed
class RestaurantLocation with _$RestaurantLocation {
  const factory RestaurantLocation({
    required String address,
    required String locality,
    required String city,
    required double latitude,
    required double longitude,
    @JsonKey(name: 'locality_verbose') required String localityVerbose,
  }) = _RestaurantLocation$;

  factory RestaurantLocation.fromJson(Map<dynamic, dynamic> json) =>
      _$RestaurantLocationFromJson(Map<String, dynamic>.from(json));
}
