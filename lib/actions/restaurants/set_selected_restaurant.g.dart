// GENERATED CODE - DO NOT MODIFY BY HAND

part of set_selected_restaurant;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetSelectedRestaurant extends SetSelectedRestaurant {
  @override
  final String restaurantId;

  factory _$SetSelectedRestaurant(
          [void Function(SetSelectedRestaurantBuilder) updates]) =>
      (new SetSelectedRestaurantBuilder()..update(updates)).build();

  _$SetSelectedRestaurant._({this.restaurantId}) : super._() {
    if (restaurantId == null) {
      throw new BuiltValueNullFieldError(
          'SetSelectedRestaurant', 'restaurantId');
    }
  }

  @override
  SetSelectedRestaurant rebuild(
          void Function(SetSelectedRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSelectedRestaurantBuilder toBuilder() =>
      new SetSelectedRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSelectedRestaurant && restaurantId == other.restaurantId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, restaurantId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetSelectedRestaurant')
          ..add('restaurantId', restaurantId))
        .toString();
  }
}

class SetSelectedRestaurantBuilder
    implements Builder<SetSelectedRestaurant, SetSelectedRestaurantBuilder> {
  _$SetSelectedRestaurant _$v;

  String _restaurantId;
  String get restaurantId => _$this._restaurantId;
  set restaurantId(String restaurantId) => _$this._restaurantId = restaurantId;

  SetSelectedRestaurantBuilder();

  SetSelectedRestaurantBuilder get _$this {
    if (_$v != null) {
      _restaurantId = _$v.restaurantId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSelectedRestaurant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SetSelectedRestaurant;
  }

  @override
  void update(void Function(SetSelectedRestaurantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetSelectedRestaurant build() {
    final _$result =
        _$v ?? new _$SetSelectedRestaurant._(restaurantId: restaurantId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
