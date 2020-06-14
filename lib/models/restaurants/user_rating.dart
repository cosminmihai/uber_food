library user_rating;

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:uber_food/models/serializers.dart';

part 'user_rating.g.dart';

abstract class UserRating implements Built<UserRating, UserRatingBuilder> {
  factory UserRating([void Function(UserRatingBuilder b) updates]) = _$UserRating;

  factory UserRating.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json);

  UserRating._();

  @BuiltValueField(wireName: 'rating_text')
  String get ratingText;

  @BuiltValueField(wireName: 'rating_color')
  int get ratingColor;

  int get votes;
  @BuiltValueField(wireName: 'aggregate_rating')
  double get rating;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this);

  static Serializer<UserRating> get serializer => _$userRatingSerializer;
}
