part of reviews_actions;

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
