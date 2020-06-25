library reviews_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/restaurant_reviews/restaurant_review.dart';
import 'package:uber_food/models/serializers.dart';

part 'reviews_state.g.dart';

abstract class ReviewsState implements Built<ReviewsState, ReviewsStateBuilder> {
  factory ReviewsState.initialState() {
    return _$ReviewsState((ReviewsStateBuilder b) {});
  }

  factory ReviewsState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  ReviewsState._();

  BuiltMap<String,RestaurantReview> get reviews;

  @nullable
  String get selectedRestaurantId;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<ReviewsState> get serializer => _$reviewsStateSerializer;
}
