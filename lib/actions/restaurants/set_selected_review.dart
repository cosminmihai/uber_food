part of restaurant_actions;

@freezed
class SetSelectedReview with _$SetSelectedReview implements AppAction {
  const factory SetSelectedReview(String reviewUid) = SetSelectedReview$;
}
