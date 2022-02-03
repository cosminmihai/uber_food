import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:uber_food/data/restaurant_api.dart';
import 'package:uber_food/epics/auth_epics.dart';
import 'package:uber_food/epics/restaurants_epics.dart';
import 'package:uber_food/models/index.dart';

class AppEpics {
  AppEpics({
    required AuthApi authApi,
    required RestaurantApi restaurantApi,
  })  : _authApi = authApi,
        _restaurantApi = restaurantApi;

  final AuthApi _authApi;
  final RestaurantApi _restaurantApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, InitializeApp>(_initializeApp),
      AuthEpics(authApi: _authApi).epics,
      RestaurantsEpics(restaurantApi: _restaurantApi).epics,
    ]);
  }

  Stream<AppAction> _initializeApp(Stream<InitializeApp> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap<AppAction>((InitializeApp action) => Stream<void>.value(null)
            .asyncMap((_) => _authApi.getCurrentUser())
            .expand<AppAction>((AppUser? user) => <AppAction>[
                  InitializeAppSuccessful(user),
                  if (user != null) const GetUserLocation.start(),
                ])
            .onErrorReturnWith($InitializeApp.error));
  }
}
