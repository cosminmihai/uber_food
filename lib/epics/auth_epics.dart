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
      TypedEpic<AppState, SignInWithGoogleStart>(_signInWithGoogle),
      TypedEpic<AppState, Logout$>(_logout),
      TypedEpic<AppState, GetUserLocationStart>(_getUserLocation),
      TypedEpic<AppState, GetUser$>(_getUser),
    ]);
  }

  Stream<AppAction> _signInWithGoogle(Stream<SignInWithGoogleStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((SignInWithGoogleStart action) => Stream<void>.value(null)
            .asyncMap((_) => _authApi.signInWithGoogle())
            .expand<AppAction>((AppUser user) => <AppAction>[
                  SignInWithGoogle.successful(user),
                ])
            .onErrorReturnWith($SignInWithGoogle.error)
            .doOnData(action.result));
  }

  Stream<AppAction> _getUserLocation(Stream<GetUserLocationStart> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUserLocationStart action) => Stream<void>.value(null)
                .asyncMap((_) => _authApi.getCurrentUserPosition())
                .map<AppAction>((LocationData location) {
              return GetUserLocation.successful(LatLng(location.latitude!, location.longitude!));
            }).onErrorReturnWith($GetUserLocation.error));
  }

  Stream<AppAction> _getUser(Stream<GetUser$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GetUser$ action) => Stream<void>.value(null) //
            .asyncMap((_) => _authApi.getUser(action.uid))
            .map<AppAction>((AppUser user) => GetUser.successful(user))
            .onErrorReturnWith($GetUser.error));
  }

  Stream<AppAction> _logout(Stream<Logout$> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((Logout$ action) => Stream<void>.value(null)
            .asyncMap((_) => _authApi.logOut())
            .mapTo(const Logout.successful())
            .onErrorReturnWith($Logout.error));
  }
}
