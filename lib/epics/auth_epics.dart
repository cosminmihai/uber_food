import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location_platform_interface/location_platform_interface.dart';
import 'package:meta/meta.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/auth/get_first_user_location.dart';
import 'package:uber_food/actions/auth/get_users.dart';
import 'package:uber_food/actions/auth/google_sign_in.dart';
import 'package:uber_food/actions/auth/logout.dart';
import 'package:uber_food/actions/auth/registration.dart';
import 'package:uber_food/actions/favorite_restaurant/get_favorite_restaurants.dart';
import 'package:uber_food/actions/restaurants/get_recommended_restaurants.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;
  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GoogleConnect>(_googleSignIn),
      TypedEpic<AppState, LogOut>(_logout),
      TypedEpic<AppState, GetFirstUserLocation>(_getFirstUserLocation),
      TypedEpic<AppState, GetUsers>(_getUsers),
    ]);
  }

  Stream<AppAction> _googleSignIn(Stream<GoogleConnect> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GoogleConnect action) => _authApi
            .createGoogleUser()
            .asStream()
            .expand<AppAction>((AppUser user) => <AppAction>[
                  GoogleConnectSuccessful(user),
                  GetFirstUserLocation(),
                ])
            .onErrorReturnWith((dynamic error) => RegistrationError(error))
            .doOnData(action.result));
  }

  Stream<AppAction> _logout(Stream<LogOut> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((LogOut action) => _authApi
            .logOut()
            .asStream()
            .expand<AppAction>((_) => <AppAction>[
                  LogOutSuccessful(),
                ])
            .onErrorReturnWith((dynamic error) => LogOutError(error)));
  }

  Stream<AppAction> _getUsers(Stream<GetUsers> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUsers action) => _authApi
            .getUsers()
            .asStream()
            .map<AppAction>((List<AppUser> users) => GetUsersSuccessful(users))
            .onErrorReturnWith((dynamic error) => GetUsersError(error)));
  }

  Stream<AppAction> _getFirstUserLocation(Stream<GetFirstUserLocation> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFirstUserLocation action) => _authApi
            .getCurrentUserPosition()
            .asStream()
            .expand<AppAction>((LocationData locationData) => <AppAction>[
                  GetFirstUserLocationSuccessful(LatLng(locationData.latitude, locationData.longitude)),
                  GetFavoriteRestaurants(store.state.auth.user.uid),
                  GetRecommendedRestaurants(locationData: LatLng(locationData.latitude, locationData.longitude))
                ])
            .onErrorReturnWith((dynamic error) => GetFirstUserLocationError(error)));
  }
}
