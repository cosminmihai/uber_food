import 'package:uber_food/init/action_reporting.dart';
import 'package:uber_food/models/index.dart';
import 'package:uber_food/reducer/auth_reducer.dart';
import 'package:uber_food/reducer/restaurants_reducer.dart';

const ActionReporting _reporting = ActionReporting();

AppState reducer(AppState state, dynamic action) {
  _reporting.report(action);

  return state.copyWith(
    auth: authReducer(state.auth, action),
    restaurants: restaurantsState(state.restaurants, action),
  );
}
