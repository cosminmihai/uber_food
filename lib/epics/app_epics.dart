import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/initialize_app.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:uber_food/data/restaurant_api.dart';
import 'package:uber_food/data/reviews_api.dart';
import 'package:uber_food/epics/auth_epics.dart';
import 'package:uber_food/epics/restaurants_epics.dart';
import 'package:uber_food/epics/reviews_epics.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/auth/app_user.dart';

class AppEpics {
  AppEpics({@required AuthApi authApi, @required RestaurantApi restaurantApi, @required ReviewsApi reviewsApi})
      : assert(authApi != null),
        assert(restaurantApi != null),
        assert(reviewsApi != null),
        _authApi = authApi,
        _restaurantApi = restaurantApi,
        _reviewsApi = reviewsApi;

  final AuthApi _authApi;
  final RestaurantApi _restaurantApi;
  final ReviewsApi _reviewsApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp>(_initializeApp),
      AuthEpics(authApi: _authApi).epics,
      RestaurantsEpics(restaurantApi: _restaurantApi).epics,
      ReviewsEpics(reviewsApi: _reviewsApi).epics,
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap<AppAction>((InitializeApp action) => _authApi
            .getUser()
            .asStream()
            .map<AppAction>((AppUser user) => InitializeAppSuccessful(user))
            .onErrorReturnWith((dynamic error) => InitializeAppError(error)));
  }
}
