// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_restaurant_reviews;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForReviews extends ListenForReviews {
  factory _$ListenForReviews(
          [void Function(ListenForReviewsBuilder) updates]) =>
      (new ListenForReviewsBuilder()..update(updates)).build();

  _$ListenForReviews._() : super._();

  @override
  ListenForReviews rebuild(void Function(ListenForReviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForReviewsBuilder toBuilder() =>
      new ListenForReviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForReviews;
  }

  @override
  int get hashCode {
    return 546511984;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForReviews').toString();
  }
}

class ListenForReviewsBuilder
    implements Builder<ListenForReviews, ListenForReviewsBuilder> {
  _$ListenForReviews _$v;

  ListenForReviewsBuilder();

  @override
  void replace(ListenForReviews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForReviews;
  }

  @override
  void update(void Function(ListenForReviewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForReviews build() {
    final _$result = _$v ?? new _$ListenForReviews._();
    replace(_$result);
    return _$result;
  }
}

class _$StopListenForReviews extends StopListenForReviews {
  factory _$StopListenForReviews(
          [void Function(StopListenForReviewsBuilder) updates]) =>
      (new StopListenForReviewsBuilder()..update(updates)).build();

  _$StopListenForReviews._() : super._();

  @override
  StopListenForReviews rebuild(
          void Function(StopListenForReviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopListenForReviewsBuilder toBuilder() =>
      new StopListenForReviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopListenForReviews;
  }

  @override
  int get hashCode {
    return 311970735;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StopListenForReviews').toString();
  }
}

class StopListenForReviewsBuilder
    implements Builder<StopListenForReviews, StopListenForReviewsBuilder> {
  _$StopListenForReviews _$v;

  StopListenForReviewsBuilder();

  @override
  void replace(StopListenForReviews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopListenForReviews;
  }

  @override
  void update(void Function(StopListenForReviewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopListenForReviews build() {
    final _$result = _$v ?? new _$StopListenForReviews._();
    replace(_$result);
    return _$result;
  }
}

class _$OnReviewsEvent extends OnReviewsEvent {
  @override
  final BuiltList<RestaurantReview> reviews;

  factory _$OnReviewsEvent([void Function(OnReviewsEventBuilder) updates]) =>
      (new OnReviewsEventBuilder()..update(updates)).build();

  _$OnReviewsEvent._({this.reviews}) : super._() {
    if (reviews == null) {
      throw new BuiltValueNullFieldError('OnReviewsEvent', 'reviews');
    }
  }

  @override
  OnReviewsEvent rebuild(void Function(OnReviewsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnReviewsEventBuilder toBuilder() =>
      new OnReviewsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnReviewsEvent && reviews == other.reviews;
  }

  @override
  int get hashCode {
    return $jf($jc(0, reviews.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnReviewsEvent')
          ..add('reviews', reviews))
        .toString();
  }
}

class OnReviewsEventBuilder
    implements Builder<OnReviewsEvent, OnReviewsEventBuilder> {
  _$OnReviewsEvent _$v;

  ListBuilder<RestaurantReview> _reviews;
  ListBuilder<RestaurantReview> get reviews =>
      _$this._reviews ??= new ListBuilder<RestaurantReview>();
  set reviews(ListBuilder<RestaurantReview> reviews) =>
      _$this._reviews = reviews;

  OnReviewsEventBuilder();

  OnReviewsEventBuilder get _$this {
    if (_$v != null) {
      _reviews = _$v.reviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnReviewsEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnReviewsEvent;
  }

  @override
  void update(void Function(OnReviewsEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnReviewsEvent build() {
    _$OnReviewsEvent _$result;
    try {
      _$result = _$v ?? new _$OnReviewsEvent._(reviews: reviews.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'reviews';
        reviews.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnReviewsEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForReviewsError extends ListenForReviewsError {
  @override
  final Object error;

  factory _$ListenForReviewsError(
          [void Function(ListenForReviewsErrorBuilder) updates]) =>
      (new ListenForReviewsErrorBuilder()..update(updates)).build();

  _$ListenForReviewsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ListenForReviewsError', 'error');
    }
  }

  @override
  ListenForReviewsError rebuild(
          void Function(ListenForReviewsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForReviewsErrorBuilder toBuilder() =>
      new ListenForReviewsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForReviewsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForReviewsError')
          ..add('error', error))
        .toString();
  }
}

class ListenForReviewsErrorBuilder
    implements Builder<ListenForReviewsError, ListenForReviewsErrorBuilder> {
  _$ListenForReviewsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForReviewsErrorBuilder();

  ListenForReviewsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForReviewsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForReviewsError;
  }

  @override
  void update(void Function(ListenForReviewsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForReviewsError build() {
    final _$result = _$v ?? new _$ListenForReviewsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
