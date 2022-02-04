import 'package:redux/redux.dart';
import 'package:uber_food/actions/actions.dart';
import 'package:uber_food/actions/auth/index.dart';
import 'package:uber_food/models/index.dart';

Reducer<AuthState> authReducer = combineReducers<AuthState>(<Reducer<AuthState>>[
  TypedReducer<AuthState, UserAction>(_userAction),
  TypedReducer<AuthState, UserAction>(_userAction),
  TypedReducer<AuthState, GetUserSuccessful>(_getUserSuccessful),
  TypedReducer<AuthState, GetUserLocationSuccessful>(_getUserLocationSuccessful),
  TypedReducer<AuthState, LogoutSuccessful>(_logoutSuccessful),
  TypedReducer<AuthState, SetUserLocation$>(_setUserLocation),
  TypedReducer<AuthState, SignInWithGoogleSuccessful>(_signInWithGoogleSuccessful),
]);

AuthState _userAction(AuthState state, UserAction action) {
  return state.copyWith(user: action.user);
}

AuthState _getUserSuccessful(AuthState state, GetUserSuccessful action) {
  return state.copyWith(users: <String, AppUser>{...state.users, action.user.uid: action.user});
}

AuthState _getUserLocationSuccessful(AuthState state, GetUserLocationSuccessful action) {
  final AuthState updatedState = state.copyWith(userLocation: action.location);
  return updatedState;
}

AuthState _logoutSuccessful(AuthState state, LogoutSuccessful action) => const AuthState();

AuthState _setUserLocation(AuthState state, SetUserLocation$ action) {
  return state.copyWith(userLocation: action.location);
}

AuthState _signInWithGoogleSuccessful(AuthState state, SignInWithGoogleSuccessful action) {
  return state.copyWith(user: action.user);
}
