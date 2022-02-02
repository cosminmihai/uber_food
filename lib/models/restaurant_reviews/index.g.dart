// GENERATED CODE - DO NOT MODIFY BY HAND

part of restaurant_review_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestaurantReview> _$restaurantReviewSerializer =
    new _$RestaurantReviewSerializer();
Serializer<ReviewsState> _$reviewsStateSerializer =
    new _$ReviewsStateSerializer();

class _$RestaurantReviewSerializer
    implements StructuredSerializer<RestaurantReview> {
  @override
  final Iterable<Type> types = const [RestaurantReview, _$RestaurantReview];
  @override
  final String wireName = 'RestaurantReview';

  @override
  Iterable<Object?> serialize(Serializers serializers, RestaurantReview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'uid',
      serializers.serialize(object.uid, specifiedType: const FullType(String)),
      'restaurantId',
      serializers.serialize(object.restaurantId,
          specifiedType: const FullType(String)),
      'textReview',
      serializers.serialize(object.textReview,
          specifiedType: const FullType(String)),
      'createdAt',
      serializers.serialize(object.createdAt,
          specifiedType: const FullType(DateTime)),
      'rating',
      serializers.serialize(object.rating, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  RestaurantReview deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'restaurantId':
          result.restaurantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'textReview':
          result.textReview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewsStateSerializer implements StructuredSerializer<ReviewsState> {
  @override
  final Iterable<Type> types = const [ReviewsState, _$ReviewsState];
  @override
  final String wireName = 'ReviewsState';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReviewsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'reviews',
      serializers.serialize(object.reviews,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(RestaurantReview)
          ])),
      'userReviews',
      serializers.serialize(object.userReviews,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(RestaurantReview)
          ])),
      'usersForReviews',
      serializers.serialize(object.usersForReviews,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(AppUser)])),
    ];
    Object? value;
    value = object.selectedRestaurantId;
    if (value != null) {
      result
        ..add('selectedRestaurantId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reviewUid;
    if (value != null) {
      result
        ..add('reviewUid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReviewsState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(RestaurantReview)
              ]))!);
          break;
        case 'selectedRestaurantId':
          result.selectedRestaurantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'reviewUid':
          result.reviewUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userReviews':
          result.userReviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(RestaurantReview)
              ]))!);
          break;
        case 'usersForReviews':
          result.usersForReviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(AppUser)]))!);
          break;
      }
    }

    return result.build();
  }
}

class _$RestaurantReview extends RestaurantReview {
  @override
  final String id;
  @override
  final String uid;
  @override
  final String restaurantId;
  @override
  final String textReview;
  @override
  final DateTime createdAt;
  @override
  final int rating;

  factory _$RestaurantReview(
          [void Function(RestaurantReviewBuilder)? updates]) =>
      (new RestaurantReviewBuilder()..update(updates)).build();

  _$RestaurantReview._(
      {required this.id,
      required this.uid,
      required this.restaurantId,
      required this.textReview,
      required this.createdAt,
      required this.rating})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'RestaurantReview', 'id');
    BuiltValueNullFieldError.checkNotNull(uid, 'RestaurantReview', 'uid');
    BuiltValueNullFieldError.checkNotNull(
        restaurantId, 'RestaurantReview', 'restaurantId');
    BuiltValueNullFieldError.checkNotNull(
        textReview, 'RestaurantReview', 'textReview');
    BuiltValueNullFieldError.checkNotNull(
        createdAt, 'RestaurantReview', 'createdAt');
    BuiltValueNullFieldError.checkNotNull(rating, 'RestaurantReview', 'rating');
  }

  @override
  RestaurantReview rebuild(void Function(RestaurantReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RestaurantReviewBuilder toBuilder() =>
      new RestaurantReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RestaurantReview &&
        id == other.id &&
        uid == other.uid &&
        restaurantId == other.restaurantId &&
        textReview == other.textReview &&
        createdAt == other.createdAt &&
        rating == other.rating;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), uid.hashCode),
                    restaurantId.hashCode),
                textReview.hashCode),
            createdAt.hashCode),
        rating.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RestaurantReview')
          ..add('id', id)
          ..add('uid', uid)
          ..add('restaurantId', restaurantId)
          ..add('textReview', textReview)
          ..add('createdAt', createdAt)
          ..add('rating', rating))
        .toString();
  }
}

class RestaurantReviewBuilder
    implements Builder<RestaurantReview, RestaurantReviewBuilder> {
  _$RestaurantReview? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  String? _restaurantId;
  String? get restaurantId => _$this._restaurantId;
  set restaurantId(String? restaurantId) => _$this._restaurantId = restaurantId;

  String? _textReview;
  String? get textReview => _$this._textReview;
  set textReview(String? textReview) => _$this._textReview = textReview;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  RestaurantReviewBuilder();

  RestaurantReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _uid = $v.uid;
      _restaurantId = $v.restaurantId;
      _textReview = $v.textReview;
      _createdAt = $v.createdAt;
      _rating = $v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantReview other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RestaurantReview;
  }

  @override
  void update(void Function(RestaurantReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestaurantReview build() {
    final _$result = _$v ??
        new _$RestaurantReview._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RestaurantReview', 'id'),
            uid: BuiltValueNullFieldError.checkNotNull(
                uid, 'RestaurantReview', 'uid'),
            restaurantId: BuiltValueNullFieldError.checkNotNull(
                restaurantId, 'RestaurantReview', 'restaurantId'),
            textReview: BuiltValueNullFieldError.checkNotNull(
                textReview, 'RestaurantReview', 'textReview'),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, 'RestaurantReview', 'createdAt'),
            rating: BuiltValueNullFieldError.checkNotNull(
                rating, 'RestaurantReview', 'rating'));
    replace(_$result);
    return _$result;
  }
}

class _$ReviewsState extends ReviewsState {
  @override
  final BuiltMap<String, RestaurantReview> reviews;
  @override
  final String? selectedRestaurantId;
  @override
  final String? reviewUid;
  @override
  final BuiltMap<String, RestaurantReview> userReviews;
  @override
  final BuiltMap<String, AppUser> usersForReviews;

  factory _$ReviewsState([void Function(ReviewsStateBuilder)? updates]) =>
      (new ReviewsStateBuilder()..update(updates)).build();

  _$ReviewsState._(
      {required this.reviews,
      this.selectedRestaurantId,
      this.reviewUid,
      required this.userReviews,
      required this.usersForReviews})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(reviews, 'ReviewsState', 'reviews');
    BuiltValueNullFieldError.checkNotNull(
        userReviews, 'ReviewsState', 'userReviews');
    BuiltValueNullFieldError.checkNotNull(
        usersForReviews, 'ReviewsState', 'usersForReviews');
  }

  @override
  ReviewsState rebuild(void Function(ReviewsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsStateBuilder toBuilder() => new ReviewsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewsState &&
        reviews == other.reviews &&
        selectedRestaurantId == other.selectedRestaurantId &&
        reviewUid == other.reviewUid &&
        userReviews == other.userReviews &&
        usersForReviews == other.usersForReviews;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, reviews.hashCode), selectedRestaurantId.hashCode),
                reviewUid.hashCode),
            userReviews.hashCode),
        usersForReviews.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewsState')
          ..add('reviews', reviews)
          ..add('selectedRestaurantId', selectedRestaurantId)
          ..add('reviewUid', reviewUid)
          ..add('userReviews', userReviews)
          ..add('usersForReviews', usersForReviews))
        .toString();
  }
}

class ReviewsStateBuilder
    implements Builder<ReviewsState, ReviewsStateBuilder> {
  _$ReviewsState? _$v;

  MapBuilder<String, RestaurantReview>? _reviews;
  MapBuilder<String, RestaurantReview> get reviews =>
      _$this._reviews ??= new MapBuilder<String, RestaurantReview>();
  set reviews(MapBuilder<String, RestaurantReview>? reviews) =>
      _$this._reviews = reviews;

  String? _selectedRestaurantId;
  String? get selectedRestaurantId => _$this._selectedRestaurantId;
  set selectedRestaurantId(String? selectedRestaurantId) =>
      _$this._selectedRestaurantId = selectedRestaurantId;

  String? _reviewUid;
  String? get reviewUid => _$this._reviewUid;
  set reviewUid(String? reviewUid) => _$this._reviewUid = reviewUid;

  MapBuilder<String, RestaurantReview>? _userReviews;
  MapBuilder<String, RestaurantReview> get userReviews =>
      _$this._userReviews ??= new MapBuilder<String, RestaurantReview>();
  set userReviews(MapBuilder<String, RestaurantReview>? userReviews) =>
      _$this._userReviews = userReviews;

  MapBuilder<String, AppUser>? _usersForReviews;
  MapBuilder<String, AppUser> get usersForReviews =>
      _$this._usersForReviews ??= new MapBuilder<String, AppUser>();
  set usersForReviews(MapBuilder<String, AppUser>? usersForReviews) =>
      _$this._usersForReviews = usersForReviews;

  ReviewsStateBuilder();

  ReviewsStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reviews = $v.reviews.toBuilder();
      _selectedRestaurantId = $v.selectedRestaurantId;
      _reviewUid = $v.reviewUid;
      _userReviews = $v.userReviews.toBuilder();
      _usersForReviews = $v.usersForReviews.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewsState;
  }

  @override
  void update(void Function(ReviewsStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewsState build() {
    _$ReviewsState _$result;
    try {
      _$result = _$v ??
          new _$ReviewsState._(
              reviews: reviews.build(),
              selectedRestaurantId: selectedRestaurantId,
              reviewUid: reviewUid,
              userReviews: userReviews.build(),
              usersForReviews: usersForReviews.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'reviews';
        reviews.build();

        _$failedField = 'userReviews';
        userReviews.build();
        _$failedField = 'usersForReviews';
        usersForReviews.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReviewsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
