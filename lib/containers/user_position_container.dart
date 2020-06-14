import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:location/location.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/app_state.dart';

class UserLocationContainer extends StatelessWidget {
  const UserLocationContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<LocationData> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LocationData>(
      converter: (Store<AppState> store) {
        return store.state.auth.user.userLocation;
      },
      builder: builder,
    );
  }
}
