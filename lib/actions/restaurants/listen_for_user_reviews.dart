part of restaurant_actions;

@freezed
class ListenForUserReview with _$ListenForUserReview implements AppAction {
  const factory ListenForUserReview.start() = ListenForUserReviewStart;

  const factory ListenForUserReview.done() = ListenForUserReviewDone;

  const factory ListenForUserReview.event(List<Review> reviews) = OnUserReviewEvent;

  @Implements<ErrorAction>()
  const factory ListenForUserReview.error(Object error, StackTrace stackTrace) = _ListenForUserReviewError;
}
