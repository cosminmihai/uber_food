part of models;

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(AuthState()) AuthState auth,
    @Default(RestaurantsState()) RestaurantsState restaurants,
    @Default(<String>{}) Set<String> pendingActions,
  }) = _AppState$;
}
