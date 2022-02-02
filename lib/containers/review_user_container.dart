import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/index.dart';

class UsersForReviewContainer extends StatelessWidget {
  const UsersForReviewContainer({Key? key, required this.builder}) : super(key: key);
  final ViewModelBuilder<Map<String, AppUser>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Map<String, AppUser>>(
      converter: (Store<AppState> store) => store.state.auth.usersForReviews.asMap(),
      builder: builder,
    );
  }
}
