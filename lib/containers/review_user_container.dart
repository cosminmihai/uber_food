import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/app_state.dart';
import 'package:uber_food/models/auth/app_user.dart';

class ReviewUserContainer extends StatelessWidget {
  const ReviewUserContainer({Key key, @required this.builder}) : super(key: key);
  final ViewModelBuilder<AppUser> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppUser>(
      converter: (Store<AppState> store) => store.state.auth.users
          .firstWhere((AppUser user) => user.uid == store.state.reviewsState.reviewUid, orElse: () => null),
      builder: builder,
    );
  }
}
