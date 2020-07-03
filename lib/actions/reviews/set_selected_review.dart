library set_selected_review;

import 'package:built_value/built_value.dart';
import 'package:uber_food/actions/actions.dart';

part 'set_selected_review.g.dart';

abstract class SetSelectedReview //
    implements
        Built<SetSelectedReview, SetSelectedReviewBuilder>,
        AppAction //
{
  factory SetSelectedReview(String reviewUid) {
    return _$SetSelectedReview((SetSelectedReviewBuilder b) => b.reviewUid = reviewUid);
  }

  SetSelectedReview._();

  String get reviewUid;
}
