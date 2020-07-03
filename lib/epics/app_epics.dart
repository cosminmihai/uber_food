import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/auth/get_first_user_location.dart';
import 'package:uber_food/actions/initialize_app.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:uber_food/data/favorite_restaurant_api.dart';
import 'package:uber_food/data/restaurant_api.dart';
import 'package:uber_food/data/reviews_api.dart';
import 'package:uber_food/epics/auth_epics.dart';
import 'package:uber_food/epics/favorite_restaurant_epics.dart';
import 'package:uber_food/epics/restaurants_epics.dart';
import 'package:uber_food/epics/reviews_epics.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/auth/app_user.dart';

class AppEpics {
  AppEpics(
      {@required AuthApi authApi,
      @required RestaurantApi restaurantApi,
      @required ReviewsApi reviewsApi,
      @required FavoriteRestaurantApi favoriteRestaurantApi})
      : assert(authApi != null),
        assert(restaurantApi != null),
        assert(reviewsApi != null),
        assert(favoriteRestaurantApi != null),
        _authApi = authApi,
        _restaurantApi = restaurantApi,
        _reviewsApi = reviewsApi,
        _favoriteRestaurantApi = favoriteRestaurantApi;

  final AuthApi _authApi;
  final RestaurantApi _restaurantApi;
  final ReviewsApi _reviewsApi;
  final FavoriteRestaurantApi _favoriteRestaurantApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp>(_initializeApp),
      AuthEpics(authApi: _authApi).epics,
      RestaurantsEpics(restaurantApi: _restaurantApi).epics,
      ReviewsEpics(reviewsApi: _reviewsApi).epics,
      FavoriteRestaurantEpics(favoriteRestaurantApi: _favoriteRestaurantApi).epics
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap<AppAction>((InitializeApp action) => _authApi
            .getUser()
            .asStream()
            .expand<AppAction>((AppUser user) => <AppAction>[
                  InitializeAppSuccessful(user),
                  if (user != null) GetFirstUserLocation(),
                ])
            .onErrorReturnWith((dynamic error) => InitializeAppError(error)));
  }
}
