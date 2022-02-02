part of restaurant_review_models;

abstract class RestaurantReview
    implements Built<RestaurantReview, RestaurantReviewBuilder>, Comparable<RestaurantReview> {
  factory RestaurantReview({
    required String id,
    required String uid,
    required String restaurantId,
    required String textReview,
    required int rating,
  }) {
    return _$RestaurantReview((RestaurantReviewBuilder b) {
      b
        ..id = id
        ..uid = uid
        ..restaurantId = restaurantId
        ..textReview = textReview
        ..createdAt = DateTime.now().toUtc()
        ..rating = rating;
    });
  }

  factory RestaurantReview.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  RestaurantReview._();

  String get id;

  String get uid;

  String get restaurantId;

  String get textReview;

  DateTime get createdAt;

  int get rating;

  @override
  int compareTo(RestaurantReview review) {
    return createdAt.compareTo(review.createdAt);
  }

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<RestaurantReview> get serializer => _$restaurantReviewSerializer;
}
