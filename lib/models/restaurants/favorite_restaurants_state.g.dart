// GENERATED CODE - DO NOT MODIFY BY HAND

part of favorite_restaurants_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FavoriteRestaurantsState> _$favoriteRestaurantsStateSerializer =
    new _$FavoriteRestaurantsStateSerializer();

class _$FavoriteRestaurantsStateSerializer
    implements StructuredSerializer<FavoriteRestaurantsState> {
  @override
  final Iterable<Type> types = const [
    FavoriteRestaurantsState,
    _$FavoriteRestaurantsState
  ];
  @override
  final String wireName = 'FavoriteRestaurantsState';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FavoriteRestaurantsState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'favoriteRestaurantsState',
      serializers.serialize(object.favoriteRestaurantsState,
          specifiedType: const FullType(
              BuiltList, const [const FullType(FavoriteRestaurant)])),
    ];

    return result;
  }

  @override
  FavoriteRestaurantsState deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FavoriteRestaurantsStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'favoriteRestaurantsState':
          result.favoriteRestaurantsState.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(FavoriteRestaurant)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$FavoriteRestaurantsState extends FavoriteRestaurantsState {
  @override
  final BuiltList<FavoriteRestaurant> favoriteRestaurantsState;

  factory _$FavoriteRestaurantsState(
          [void Function(FavoriteRestaurantsStateBuilder) updates]) =>
      (new FavoriteRestaurantsStateBuilder()..update(updates)).build();

  _$FavoriteRestaurantsState._({this.favoriteRestaurantsState}) : super._() {
    if (favoriteRestaurantsState == null) {
      throw new BuiltValueNullFieldError(
          'FavoriteRestaurantsState', 'favoriteRestaurantsState');
    }
  }

  @override
  FavoriteRestaurantsState rebuild(
          void Function(FavoriteRestaurantsStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FavoriteRestaurantsStateBuilder toBuilder() =>
      new FavoriteRestaurantsStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FavoriteRestaurantsState &&
        favoriteRestaurantsState == other.favoriteRestaurantsState;
  }

  @override
  int get hashCode {
    return $jf($jc(0, favoriteRestaurantsState.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FavoriteRestaurantsState')
          ..add('favoriteRestaurantsState', favoriteRestaurantsState))
        .toString();
  }
}

class FavoriteRestaurantsStateBuilder
    implements
        Builder<FavoriteRestaurantsState, FavoriteRestaurantsStateBuilder> {
  _$FavoriteRestaurantsState _$v;

  ListBuilder<FavoriteRestaurant> _favoriteRestaurantsState;
  ListBuilder<FavoriteRestaurant> get favoriteRestaurantsState =>
      _$this._favoriteRestaurantsState ??=
          new ListBuilder<FavoriteRestaurant>();
  set favoriteRestaurantsState(
          ListBuilder<FavoriteRestaurant> favoriteRestaurantsState) =>
      _$this._favoriteRestaurantsState = favoriteRestaurantsState;

  FavoriteRestaurantsStateBuilder();

  FavoriteRestaurantsStateBuilder get _$this {
    if (_$v != null) {
      _favoriteRestaurantsState = _$v.favoriteRestaurantsState?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FavoriteRestaurantsState other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FavoriteRestaurantsState;
  }

  @override
  void update(void Function(FavoriteRestaurantsStateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FavoriteRestaurantsState build() {
    _$FavoriteRestaurantsState _$result;
    try {
      _$result = _$v ??
          new _$FavoriteRestaurantsState._(
              favoriteRestaurantsState: favoriteRestaurantsState.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'favoriteRestaurantsState';
        favoriteRestaurantsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'FavoriteRestaurantsState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
