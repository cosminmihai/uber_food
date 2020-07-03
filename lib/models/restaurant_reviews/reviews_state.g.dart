// GENERATED CODE - DO NOT MODIFY BY HAND

part of reviews_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewsState> _$reviewsStateSerializer =
    new _$ReviewsStateSerializer();

class _$ReviewsStateSerializer implements StructuredSerializer<ReviewsState> {
  @override
  final Iterable<Type> types = const [ReviewsState, _$ReviewsState];
  @override
  final String wireName = 'ReviewsState';

  @override
  Iterable<Object> serialize(Serializers serializers, ReviewsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'reviews',
      serializers.serialize(object.reviews,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(RestaurantReview)
          ])),
    ];
    if (object.selectedRestaurantId != null) {
      result
        ..add('selectedRestaurantId')
        ..add(serializers.serialize(object.selectedRestaurantId,
            specifiedType: const FullType(String)));
    }
    if (object.reviewUid != null) {
      result
        ..add('reviewUid')
        ..add(serializers.serialize(object.reviewUid,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReviewsState deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'reviews':
          result.reviews.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(RestaurantReview)
              ])));
          break;
        case 'selectedRestaurantId':
          result.selectedRestaurantId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'reviewUid':
          result.reviewUid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewsState extends ReviewsState {
  @override
  final BuiltMap<String, RestaurantReview> reviews;
  @override
  final String selectedRestaurantId;
  @override
  final String reviewUid;

  factory _$ReviewsState([void Function(ReviewsStateBuilder) updates]) =>
      (new ReviewsStateBuilder()..update(updates)).build();

  _$ReviewsState._({this.reviews, this.selectedRestaurantId, this.reviewUid})
      : super._() {
    if (reviews == null) {
      throw new BuiltValueNullFieldError('ReviewsState', 'reviews');
    }
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
        reviewUid == other.reviewUid;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, reviews.hashCode), selectedRestaurantId.hashCode),
        reviewUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewsState')
          ..add('reviews', reviews)
          ..add('selectedRestaurantId', selectedRestaurantId)
          ..add('reviewUid', reviewUid))
        .toString();
  }
}

class ReviewsStateBuilder
    implements Builder<ReviewsState, ReviewsStateBuilder> {
  _$ReviewsState _$v;

  MapBuilder<String, RestaurantReview> _reviews;
  MapBuilder<String, RestaurantReview> get reviews =>
      _$this._reviews ??= new MapBuilder<String, RestaurantReview>();
  set reviews(MapBuilder<String, RestaurantReview> reviews) =>
      _$this._reviews = reviews;

  String _selectedRestaurantId;
  String get selectedRestaurantId => _$this._selectedRestaurantId;
  set selectedRestaurantId(String selectedRestaurantId) =>
      _$this._selectedRestaurantId = selectedRestaurantId;

  String _reviewUid;
  String get reviewUid => _$this._reviewUid;
  set reviewUid(String reviewUid) => _$this._reviewUid = reviewUid;

  ReviewsStateBuilder();

  ReviewsStateBuilder get _$this {
    if (_$v != null) {
      _reviews = _$v.reviews?.toBuilder();
      _selectedRestaurantId = _$v.selectedRestaurantId;
      _reviewUid = _$v.reviewUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewsState;
  }

  @override
  void update(void Function(ReviewsStateBuilder) updates) {
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
              reviewUid: reviewUid);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reviews';
        reviews.build();
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
