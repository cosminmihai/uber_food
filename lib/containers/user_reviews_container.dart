import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:uber_food/models/index.dart';

class UserReviewsContainer extends StatelessWidget {
  const UserReviewsContainer({Key? key, required this.builder}) : super(key: key);
  final ViewModelBuilder<List<Review>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Review>>(
      converter: (Store<AppState> store) {
        return store.state.restaurants.reviews.values
            .where((Review review) => review.uid == store.state.auth.user!.uid)
            .toList();
      },
      builder: builder,
    );
  }
}
