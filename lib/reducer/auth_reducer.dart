import 'package:redux/redux.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/auth/get_current_user_location.dart';
import 'package:uber_food/actions/auth/google_sign_in.dart';
import 'package:uber_food/actions/auth/logout.dart';
import 'package:uber_food/models/auth/auth_state.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, UserAction>(_userAction),
  TypedReducer<AuthState, GoogleConnectSuccessful>(_googleConnectSuccessful),
  TypedReducer<AuthState, LogOutSuccessful>(_logoutSuccessful),
  TypedReducer<AuthState, GetCurrentUserLocation>(_getCurrentUserLocation),
]);

AuthState _userAction(AuthState state, UserAction action) {
  return state.rebuild((AuthStateBuilder b) {
    b.user = action.user?.toBuilder();
  });
}

AuthState _logoutSuccessful(AuthState state, LogOutSuccessful action) {
  return AuthState.initialState();
}

AuthState _googleConnectSuccessful(AuthState state, GoogleConnectSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user = action.user?.toBuilder());
}

AuthState _getCurrentUserLocation(AuthState state, GetCurrentUserLocation action) {
  return state.rebuild((AuthStateBuilder b) => b.user.userLocation = action.location);
}
