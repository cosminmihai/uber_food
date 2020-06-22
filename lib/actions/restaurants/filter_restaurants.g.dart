// GENERATED CODE - DO NOT MODIFY BY HAND

part of filterRestaurants;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilterRestaurant extends FilterRestaurant {
  @override
  final String query;

  factory _$FilterRestaurant(
          [void Function(FilterRestaurantBuilder) updates]) =>
      (new FilterRestaurantBuilder()..update(updates)).build();

  _$FilterRestaurant._({this.query}) : super._() {
    if (query == null) {
      throw new BuiltValueNullFieldError('FilterRestaurant', 'query');
    }
  }

  @override
  FilterRestaurant rebuild(void Function(FilterRestaurantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilterRestaurantBuilder toBuilder() =>
      new FilterRestaurantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilterRestaurant && query == other.query;
  }

  @override
  int get hashCode {
    return $jf($jc(0, query.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FilterRestaurant')
          ..add('query', query))
        .toString();
  }
}

class FilterRestaurantBuilder
    implements Builder<FilterRestaurant, FilterRestaurantBuilder> {
  _$FilterRestaurant _$v;

  String _query;
  String get query => _$this._query;
  set query(String query) => _$this._query = query;

  FilterRestaurantBuilder();

  FilterRestaurantBuilder get _$this {
    if (_$v != null) {
      _query = _$v.query;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilterRestaurant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FilterRestaurant;
  }

  @override
  void update(void Function(FilterRestaurantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FilterRestaurant build() {
    final _$result = _$v ?? new _$FilterRestaurant._(query: query);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
