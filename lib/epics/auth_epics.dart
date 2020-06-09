import 'package:redux_epics/redux_epics.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/auth/google_sign_in.dart';
import 'package:uber_food/actions/auth/logout.dart';
import 'package:uber_food/actions/auth/registration.dart';
import 'package:uber_food/data/auth_api.dart';
import 'package:meta/meta.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';
import 'package:rxdart/rxdart.dart';

class AuthEpics {
  const AuthEpics({@required AuthApi authApi})
      : assert(authApi != null),
        _authApi = authApi;
  final AuthApi _authApi;

  Epic<AppState> get epics {
    return combineEpics(<Epic<AppState>>[
      TypedEpic<AppState, GoogleConnect>(_googleSignIn),
      TypedEpic<AppState, LogOut>(_logout),
    ]);
  }

  Stream<AppAction> _googleSignIn(Stream<GoogleConnect> actions, EpicStore<AppState> store) {
    return actions //
        .flatMap((GoogleConnect action) => _authApi
            .createGoogleUser()
            .asStream()
            .expand<AppAction>((AppUser user) => <AppAction>[
                  GoogleConnectSuccessful(user),
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
}
