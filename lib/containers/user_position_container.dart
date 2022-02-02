import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/index.dart';

class UserLocationContainer extends StatelessWidget {
  const UserLocationContainer({Key? key, required this.builder}) : super(key: key);
  final ViewModelBuilder<LatLng> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, LatLng>(
      converter: (Store<AppState> store) {
        return store.state.auth.user!.userLocation;
      },
      builder: builder,
    );
  }
}
