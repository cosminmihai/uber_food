import 'package:redux/redux.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/index.dart';
import 'package:uber_food/models/auth/index.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, UserAction>(_userAction),
  TypedReducer<AuthState, GoogleConnectSuccessful>(_googleConnectSuccessful),
  TypedReducer<AuthState, LogOutSuccessful>(_logoutSuccessful),
  TypedReducer<AuthState, GetCurrentUserLocation>(_getCurrentUserLocation),
  TypedReducer<AuthState, GetFirstUserLocationSuccessful>(_getFirstUserLocationSuccessful),
  TypedReducer<AuthState, GetUserForReviewSuccessful>(_getUserForReviewSuccessful),
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
  return state.rebuild((AuthStateBuilder b) => b.user = action.user.toBuilder());
}

AuthState _getCurrentUserLocation(AuthState state, GetCurrentUserLocation action) {
  return state.rebuild((AuthStateBuilder b) => b.user.userLocation = action.location);
}

AuthState _getFirstUserLocationSuccessful(AuthState state, GetFirstUserLocationSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.user.userLocation = action.location);
}

AuthState _getUserForReviewSuccessful(AuthState state, GetUserForReviewSuccessful action) {
  return state.rebuild((AuthStateBuilder b) => b.usersForReviews[action.user.uid] = action.user);
}
