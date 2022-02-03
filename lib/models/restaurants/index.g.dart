// GENERATED CODE - DO NOT MODIFY BY HAND

part of restaurant_models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FavoriteRestaurant$ _$$_FavoriteRestaurant$FromJson(
        Map<String, dynamic> json) =>
    _$_FavoriteRestaurant$(
      id: json['id'] as String,
      data: Restaurant.fromJson(json['data'] as Map<String, dynamic>),
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$$_FavoriteRestaurant$ToJson(
        _$_FavoriteRestaurant$ instance) =>
    <String, dynamic>{
      'id': instance.id,
      'data': instance.data,
      'userId': instance.userId,
    };

_$_Restaurant$ _$$_Restaurant$FromJson(Map<String, dynamic> json) =>
    _$_Restaurant$(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      location:
          RestaurantLocation.fromJson(json['location'] as Map<String, dynamic>),
      usersRating:
          UsersRating.fromJson(json['user_rating'] as Map<String, dynamic>),
      hasOnlineDelivery: json['has_online_delivery'] as bool,
      cuisines:
          (json['cuisines'] as List<dynamic>).map((e) => e as String).toList(),
      timings: json['timings'] as String,
      currency: json['currency'] as String,
      featuredPhoto: json['featured_image'] as String?,
      phoneNumbers: (json['phoneNumbers'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      highlights: (json['highlights'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      menuUrl: json['menu_url'] as String,
    );

Map<String, dynamic> _$$_Restaurant$ToJson(_$_Restaurant$ instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'location': instance.location,
      'user_rating': instance.usersRating,
      'has_online_delivery': instance.hasOnlineDelivery,
      'cuisines': instance.cuisines,
      'timings': instance.timings,
      'currency': instance.currency,
      'featured_image': instance.featuredPhoto,
      'phoneNumbers': instance.phoneNumbers,
      'highlights': instance.highlights,
      'menu_url': instance.menuUrl,
    };

_$_RestaurantLocation$ _$$_RestaurantLocation$FromJson(
        Map<String, dynamic> json) =>
    _$_RestaurantLocation$(
      address: json['address'] as String,
      locality: json['locality'] as String,
      city: json['city'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      localityVerbose: json['locality_verbose'] as String,
    );

Map<String, dynamic> _$$_RestaurantLocation$ToJson(
        _$_RestaurantLocation$ instance) =>
    <String, dynamic>{
      'address': instance.address,
      'locality': instance.locality,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'locality_verbose': instance.localityVerbose,
    };

_$_Review$ _$$_Review$FromJson(Map<String, dynamic> json) => _$_Review$(
      id: json['id'] as String,
      uid: json['uid'] as String,
      restaurantId: json['restaurantId'] as String,
      textReview: json['textReview'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      rating: json['rating'] as int,
    );

Map<String, dynamic> _$$_Review$ToJson(_$_Review$ instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'restaurantId': instance.restaurantId,
      'textReview': instance.textReview,
      'createdAt': instance.createdAt.toIso8601String(),
      'rating': instance.rating,
    };

_$_UsersRating$ _$$_UsersRating$FromJson(Map<String, dynamic> json) =>
    _$_UsersRating$(
      votes: json['votes'] as int,
      ratingText: json['rating_text'] as String,
      ratingColor: json['rating_color'] as int,
      rating: (json['aggregate_rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$_UsersRating$ToJson(_$_UsersRating$ instance) =>
    <String, dynamic>{
      'votes': instance.votes,
      'rating_text': instance.ratingText,
      'rating_color': instance.ratingColor,
      'aggregate_rating': instance.rating,
    };
