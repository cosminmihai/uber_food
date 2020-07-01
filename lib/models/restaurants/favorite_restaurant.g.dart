// GENERATED CODE - DO NOT MODIFY BY HAND

part of favorite_restaurant;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavoriteRestaurant> _$favoriteRestaurantSerializer =
    new _$FavoriteRestaurantSerializer();

class _$FavoriteRestaurantSerializer
    implements StructuredSerializer<FavoriteRestaurant> {
  @override
  final Iterable<Type> types = const [FavoriteRestaurant, _$FavoriteRestaurant];
  @override
  final String wireName = 'FavoriteRestaurant';

  @override
  Iterable<Object> serialize(Serializers serializers, FavoriteRestaurant object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'restaurantData',
      serializers.serialize(object.restaurantData,
          specifiedType: const FullType(Restaurant)),
      'userId',
      serializers.serialize(object.userId,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  FavoriteRestaurant deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteRestaurantBuilder();

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
        case 'restaurantData':
          result.restaurantData.replace(serializers.deserialize(value,
              specifiedType: const FullType(Restaurant)) as Restaurant);
          break;
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FavoriteRestaurant extends FavoriteRestaurant {
  @override
  final String id;
  @override
  final Restaurant restaurantData;
  @override
  final String userId;

  factory _$FavoriteRestaurant(
          [void Function(FavoriteRestaurantBuilder) updates]) =>
      (new FavoriteRestaurantBuilder()..update(updates)).build();

  _$FavoriteRestaurant._({this.id, this.restaurantData, this.userId})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('FavoriteRestaurant', 'id');
    }
    if (restaurantData == null) {
      throw new BuiltValueNullFieldError(
          'FavoriteRestaurant', 'restaurantData');
    }
    if (userId == null) {
      throw new BuiltValueNullFieldError('FavoriteRestaurant', 'userId');
    }
  }

  @override
  FavoriteRestaurant rebuild(
          void Function(FavoriteRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteRestaurantBuilder toBuilder() =>
      new FavoriteRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteRestaurant &&
        id == other.id &&
        restaurantData == other.restaurantData &&
        userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, id.hashCode), restaurantData.hashCode), userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteRestaurant')
          ..add('id', id)
          ..add('restaurantData', restaurantData)
          ..add('userId', userId))
        .toString();
  }
}

class FavoriteRestaurantBuilder
    implements Builder<FavoriteRestaurant, FavoriteRestaurantBuilder> {
  _$FavoriteRestaurant _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  RestaurantBuilder _restaurantData;
  RestaurantBuilder get restaurantData =>
      _$this._restaurantData ??= new RestaurantBuilder();
  set restaurantData(RestaurantBuilder restaurantData) =>
      _$this._restaurantData = restaurantData;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  FavoriteRestaurantBuilder();

  FavoriteRestaurantBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _restaurantData = _$v.restaurantData?.toBuilder();
      _userId = _$v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteRestaurant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FavoriteRestaurant;
  }

  @override
  void update(void Function(FavoriteRestaurantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteRestaurant build() {
    _$FavoriteRestaurant _$result;
    try {
      _$result = _$v ??
          new _$FavoriteRestaurant._(
              id: id, restaurantData: restaurantData.build(), userId: userId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'restaurantData';
        restaurantData.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavoriteRestaurant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
