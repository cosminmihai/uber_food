part of models;

abstract class AppState implements Built<AppState, AppStateBuilder> {
  factory AppState.initialState() {
    return _$AppState((AppStateBuilder b) {
      b
        ..auth = AuthState.initialState().toBuilder()
        ..restaurantState = RestaurantsState.initialState().toBuilder()
        ..favoriteRestaurantsState = FavoriteRestaurantsState.initialState().toBuilder();
    });
  }

  factory AppState.fromJson(Map<dynamic, dynamic> json) => serializers.deserializeWith(serializer, json)!;

  AppState._();

  AuthState get auth;

  RestaurantsState get restaurantState;

  ReviewsState get reviewsState;

  FavoriteRestaurantsState get favoriteRestaurantsState;

  Map<String, dynamic> get json => serializers.serializeWith(serializer, this) as Map<String, dynamic>;

  static Serializer<AppState> get serializer => _$appStateSerializer;
}
