import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/index.dart';

class UserContainer extends StatelessWidget {
  const UserContainer({Key? key, required this.builder}) : super(key: key);
  final ViewModelBuilder<AppUser?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser?>(
      converter: (Store<AppState> store) => store.state.auth.user,
      builder: builder,
    );
  }
}
