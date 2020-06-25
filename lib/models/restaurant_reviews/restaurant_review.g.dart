// GENERATED CODE - DO NOT MODIFY BY HAND

part of restaurant_review;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RestaurantReview> _$restaurantReviewSerializer =
    new _$RestaurantReviewSerializer();

class _$RestaurantReviewSerializer
    implements StructuredSerializer<RestaurantReview> {
  @override
  final Iterable<Type> types = const [RestaurantReview, _$RestaurantReview];
  @override
  final String wireName = 'RestaurantReview';

  @override
  Iterable<Object> serialize(Serializers serializers, RestaurantReview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RestaurantReviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
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
          [void Function(RestaurantReviewBuilder) updates]) =>
      (new RestaurantReviewBuilder()..update(updates)).build();

  _$RestaurantReview._(
      {this.id,
      this.uid,
      this.restaurantId,
      this.textReview,
      this.createdAt,
      this.rating})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('RestaurantReview', 'id');
    }
    if (uid == null) {
      throw new BuiltValueNullFieldError('RestaurantReview', 'uid');
    }
    if (restaurantId == null) {
      throw new BuiltValueNullFieldError('RestaurantReview', 'restaurantId');
    }
    if (textReview == null) {
      throw new BuiltValueNullFieldError('RestaurantReview', 'textReview');
    }
    if (createdAt == null) {
      throw new BuiltValueNullFieldError('RestaurantReview', 'createdAt');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('RestaurantReview', 'rating');
    }
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
  _$RestaurantReview _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  String _restaurantId;
  String get restaurantId => _$this._restaurantId;
  set restaurantId(String restaurantId) => _$this._restaurantId = restaurantId;

  String _textReview;
  String get textReview => _$this._textReview;
  set textReview(String textReview) => _$this._textReview = textReview;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  RestaurantReviewBuilder();

  RestaurantReviewBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _uid = _$v.uid;
      _restaurantId = _$v.restaurantId;
      _textReview = _$v.textReview;
      _createdAt = _$v.createdAt;
      _rating = _$v.rating;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RestaurantReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RestaurantReview;
  }

  @override
  void update(void Function(RestaurantReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RestaurantReview build() {
    final _$result = _$v ??
        new _$RestaurantReview._(
            id: id,
            uid: uid,
            restaurantId: restaurantId,
            textReview: textReview,
            createdAt: createdAt,
            rating: rating);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
