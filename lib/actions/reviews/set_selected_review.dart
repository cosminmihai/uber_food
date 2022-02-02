part of reviews_actions;

abstract class SetSelectedReview //
    implements
        Built<SetSelectedReview, SetSelectedReviewBuilder>,
        AppAction //
{
  factory SetSelectedReview(String reviewUid) {
    return _$SetSelectedReview((SetSelectedReviewBuilder b) => b.reviewUid = reviewUid);
  }

  SetSelectedReview._();

  String get reviewUid;
}
