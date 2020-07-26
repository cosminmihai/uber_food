library get_user_for_review;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/models/auth/app_user.dart';

part 'get_user_for_review.g.dart';

abstract class GetUserForReview //
    implements
        Built<GetUserForReview, GetUserForReviewBuilder>,
        AppAction //
{
  factory GetUserForReview(String uid) {
    return _$GetUserForReview((GetUserForReviewBuilder b) => b.uid = uid);
  }

  GetUserForReview._();

  String get uid;
}

abstract class GetUserForReviewSuccessful //
    implements
        Built<GetUserForReviewSuccessful, GetUserForReviewSuccessfulBuilder>,
        AppAction //
{
  factory GetUserForReviewSuccessful(AppUser user) {
    return _$GetUserForReviewSuccessful((GetUserForReviewSuccessfulBuilder b) => b.user = user.toBuilder());
  }

  GetUserForReviewSuccessful._();

  AppUser get user;
}

abstract class GetUserForReviewError //
    implements
        Built<GetUserForReviewError, GetUserForReviewErrorBuilder>,
        ErrorAction //
{
  factory GetUserForReviewError(Object error) {
    return _$GetUserForReviewError((GetUserForReviewErrorBuilder b) => b.error = error);
  }

  GetUserForReviewError._();

  @override
  Object get error;
}
