import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location_platform_interface/location_platform_interface.dart';

import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:uber_food/models/index.dart';

class AuthEpics {
  const AuthEpics({required AuthApi authApi}) : _authApi = authApi;
  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GoogleConnect>(_googleSignIn),
      TypedEpic<AppState, LogOut>(_logout),
      TypedEpic<AppState, GetFirstUserLocation>(_getFirstUserLocation),
      TypedEpic<AppState, GetUserForReview>(_getUserForReview),
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
            .onErrorReturnWith((Object error, _) => RegistrationError(error))
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
            .onErrorReturnWith((dynamic error, _) => LogOutError(error)));
  }

  Stream<AppAction> _getFirstUserLocation(Stream<GetFirstUserLocation> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetFirstUserLocation action) => _authApi
            .getCurrentUserPosition()
            .asStream()
            .expand<AppAction>((LocationData locationData) => <AppAction>[
                  GetFirstUserLocationSuccessful(LatLng(locationData.latitude!, locationData.longitude!)),
                  GetFavoriteRestaurants(store.state.auth.user!.uid),
                  GetRecommendedRestaurants(locationData: LatLng(locationData.latitude!, locationData.longitude!))
                ])
            .onErrorReturnWith((dynamic error, _) => GetFirstUserLocationError(error)));
  }

  Stream<AppAction> _getUserForReview(Stream<GetUserForReview> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUserForReview action) => _authApi
            .getUserForReview(action.uid)
            .asStream()
            .map<AppAction>((AppUser userForReview) => GetUserForReviewSuccessful(userForReview))
            .onErrorReturnWith((dynamic error, _) => GetUserForReviewError(error)));
  }
}
