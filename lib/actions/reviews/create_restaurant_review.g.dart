// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_restaurant_review;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRestaurantReview extends CreateRestaurantReview {
  @override
  final String text;
  @override
  final int stars;
  @override
  final ActionResult result;

  factory _$CreateRestaurantReview(
          [void Function(CreateRestaurantReviewBuilder) updates]) =>
      (new CreateRestaurantReviewBuilder()..update(updates)).build();

  _$CreateRestaurantReview._({this.text, this.stars, this.result}) : super._() {
    if (text == null) {
      throw new BuiltValueNullFieldError('CreateRestaurantReview', 'text');
    }
    if (stars == null) {
      throw new BuiltValueNullFieldError('CreateRestaurantReview', 'stars');
    }
  }

  @override
  CreateRestaurantReview rebuild(
          void Function(CreateRestaurantReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRestaurantReviewBuilder toBuilder() =>
      new CreateRestaurantReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    final dynamic _$dynamicOther = other;
    return other is CreateRestaurantReview &&
        text == other.text &&
        stars == other.stars &&
        result == _$dynamicOther.result;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, text.hashCode), stars.hashCode), result.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateRestaurantReview')
          ..add('text', text)
          ..add('stars', stars)
          ..add('result', result))
        .toString();
  }
}

class CreateRestaurantReviewBuilder
    implements Builder<CreateRestaurantReview, CreateRestaurantReviewBuilder> {
  _$CreateRestaurantReview _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _stars;
  int get stars => _$this._stars;
  set stars(int stars) => _$this._stars = stars;

  ActionResult _result;
  ActionResult get result => _$this._result;
  set result(ActionResult result) => _$this._result = result;

  CreateRestaurantReviewBuilder();

  CreateRestaurantReviewBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _stars = _$v.stars;
      _result = _$v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestaurantReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateRestaurantReview;
  }

  @override
  void update(void Function(CreateRestaurantReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateRestaurantReview build() {
    final _$result = _$v ??
        new _$CreateRestaurantReview._(
            text: text, stars: stars, result: result);
    replace(_$result);
    return _$result;
  }
}

class _$CreateRestaurantReviewSuccessful
    extends CreateRestaurantReviewSuccessful {
  @override
  final RestaurantReview restaurantReview;

  factory _$CreateRestaurantReviewSuccessful(
          [void Function(CreateRestaurantReviewSuccessfulBuilder) updates]) =>
      (new CreateRestaurantReviewSuccessfulBuilder()..update(updates)).build();

  _$CreateRestaurantReviewSuccessful._({this.restaurantReview}) : super._() {
    if (restaurantReview == null) {
      throw new BuiltValueNullFieldError(
          'CreateRestaurantReviewSuccessful', 'restaurantReview');
    }
  }

  @override
  CreateRestaurantReviewSuccessful rebuild(
          void Function(CreateRestaurantReviewSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRestaurantReviewSuccessfulBuilder toBuilder() =>
      new CreateRestaurantReviewSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRestaurantReviewSuccessful &&
        restaurantReview == other.restaurantReview;
  }

  @override
  int get hashCode {
    return $jf($jc(0, restaurantReview.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateRestaurantReviewSuccessful')
          ..add('restaurantReview', restaurantReview))
        .toString();
  }
}

class CreateRestaurantReviewSuccessfulBuilder
    implements
        Builder<CreateRestaurantReviewSuccessful,
            CreateRestaurantReviewSuccessfulBuilder> {
  _$CreateRestaurantReviewSuccessful _$v;

  RestaurantReviewBuilder _restaurantReview;
  RestaurantReviewBuilder get restaurantReview =>
      _$this._restaurantReview ??= new RestaurantReviewBuilder();
  set restaurantReview(RestaurantReviewBuilder restaurantReview) =>
      _$this._restaurantReview = restaurantReview;

  CreateRestaurantReviewSuccessfulBuilder();

  CreateRestaurantReviewSuccessfulBuilder get _$this {
    if (_$v != null) {
      _restaurantReview = _$v.restaurantReview?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestaurantReviewSuccessful other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateRestaurantReviewSuccessful;
  }

  @override
  void update(void Function(CreateRestaurantReviewSuccessfulBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateRestaurantReviewSuccessful build() {
    _$CreateRestaurantReviewSuccessful _$result;
    try {
      _$result = _$v ??
          new _$CreateRestaurantReviewSuccessful._(
              restaurantReview: restaurantReview.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'restaurantReview';
        restaurantReview.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreateRestaurantReviewSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CreateRestaurantReviewError extends CreateRestaurantReviewError {
  @override
  final Object error;

  factory _$CreateRestaurantReviewError(
          [void Function(CreateRestaurantReviewErrorBuilder) updates]) =>
      (new CreateRestaurantReviewErrorBuilder()..update(updates)).build();

  _$CreateRestaurantReviewError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError(
          'CreateRestaurantReviewError', 'error');
    }
  }

  @override
  CreateRestaurantReviewError rebuild(
          void Function(CreateRestaurantReviewErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateRestaurantReviewErrorBuilder toBuilder() =>
      new CreateRestaurantReviewErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateRestaurantReviewError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreateRestaurantReviewError')
          ..add('error', error))
        .toString();
  }
}

class CreateRestaurantReviewErrorBuilder
    implements
        Builder<CreateRestaurantReviewError,
            CreateRestaurantReviewErrorBuilder> {
  _$CreateRestaurantReviewError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  CreateRestaurantReviewErrorBuilder();

  CreateRestaurantReviewErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestaurantReviewError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreateRestaurantReviewError;
  }

  @override
  void update(void Function(CreateRestaurantReviewErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateRestaurantReviewError build() {
    final _$result = _$v ?? new _$CreateRestaurantReviewError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
