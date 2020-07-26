// GENERATED CODE - DO NOT MODIFY BY HAND

part of listen_for_user_reviews;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListenForUserReviews extends ListenForUserReviews {
  factory _$ListenForUserReviews(
          [void Function(ListenForUserReviewsBuilder) updates]) =>
      (new ListenForUserReviewsBuilder()..update(updates)).build();

  _$ListenForUserReviews._() : super._();

  @override
  ListenForUserReviews rebuild(
          void Function(ListenForUserReviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForUserReviewsBuilder toBuilder() =>
      new ListenForUserReviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForUserReviews;
  }

  @override
  int get hashCode {
    return 916014690;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('ListenForUserReviews').toString();
  }
}

class ListenForUserReviewsBuilder
    implements Builder<ListenForUserReviews, ListenForUserReviewsBuilder> {
  _$ListenForUserReviews _$v;

  ListenForUserReviewsBuilder();

  @override
  void replace(ListenForUserReviews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForUserReviews;
  }

  @override
  void update(void Function(ListenForUserReviewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForUserReviews build() {
    final _$result = _$v ?? new _$ListenForUserReviews._();
    replace(_$result);
    return _$result;
  }
}

class _$StopListenForUserReviews extends StopListenForUserReviews {
  factory _$StopListenForUserReviews(
          [void Function(StopListenForUserReviewsBuilder) updates]) =>
      (new StopListenForUserReviewsBuilder()..update(updates)).build();

  _$StopListenForUserReviews._() : super._();

  @override
  StopListenForUserReviews rebuild(
          void Function(StopListenForUserReviewsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StopListenForUserReviewsBuilder toBuilder() =>
      new StopListenForUserReviewsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StopListenForUserReviews;
  }

  @override
  int get hashCode {
    return 630310286;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('StopListenForUserReviews').toString();
  }
}

class StopListenForUserReviewsBuilder
    implements
        Builder<StopListenForUserReviews, StopListenForUserReviewsBuilder> {
  _$StopListenForUserReviews _$v;

  StopListenForUserReviewsBuilder();

  @override
  void replace(StopListenForUserReviews other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StopListenForUserReviews;
  }

  @override
  void update(void Function(StopListenForUserReviewsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StopListenForUserReviews build() {
    final _$result = _$v ?? new _$StopListenForUserReviews._();
    replace(_$result);
    return _$result;
  }
}

class _$OnUserReviewsEvent extends OnUserReviewsEvent {
  @override
  final BuiltList<RestaurantReview> userReviews;

  factory _$OnUserReviewsEvent(
          [void Function(OnUserReviewsEventBuilder) updates]) =>
      (new OnUserReviewsEventBuilder()..update(updates)).build();

  _$OnUserReviewsEvent._({this.userReviews}) : super._() {
    if (userReviews == null) {
      throw new BuiltValueNullFieldError('OnUserReviewsEvent', 'userReviews');
    }
  }

  @override
  OnUserReviewsEvent rebuild(
          void Function(OnUserReviewsEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OnUserReviewsEventBuilder toBuilder() =>
      new OnUserReviewsEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OnUserReviewsEvent && userReviews == other.userReviews;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userReviews.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OnUserReviewsEvent')
          ..add('userReviews', userReviews))
        .toString();
  }
}

class OnUserReviewsEventBuilder
    implements Builder<OnUserReviewsEvent, OnUserReviewsEventBuilder> {
  _$OnUserReviewsEvent _$v;

  ListBuilder<RestaurantReview> _userReviews;
  ListBuilder<RestaurantReview> get userReviews =>
      _$this._userReviews ??= new ListBuilder<RestaurantReview>();
  set userReviews(ListBuilder<RestaurantReview> userReviews) =>
      _$this._userReviews = userReviews;

  OnUserReviewsEventBuilder();

  OnUserReviewsEventBuilder get _$this {
    if (_$v != null) {
      _userReviews = _$v.userReviews?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnUserReviewsEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OnUserReviewsEvent;
  }

  @override
  void update(void Function(OnUserReviewsEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnUserReviewsEvent build() {
    _$OnUserReviewsEvent _$result;
    try {
      _$result =
          _$v ?? new _$OnUserReviewsEvent._(userReviews: userReviews.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userReviews';
        userReviews.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OnUserReviewsEvent', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ListenForUserReviewsError extends ListenForUserReviewsError {
  @override
  final Object error;

  factory _$ListenForUserReviewsError(
          [void Function(ListenForUserReviewsErrorBuilder) updates]) =>
      (new ListenForUserReviewsErrorBuilder()..update(updates)).build();

  _$ListenForUserReviewsError._({this.error}) : super._() {
    if (error == null) {
      throw new BuiltValueNullFieldError('ListenForUserReviewsError', 'error');
    }
  }

  @override
  ListenForUserReviewsError rebuild(
          void Function(ListenForUserReviewsErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListenForUserReviewsErrorBuilder toBuilder() =>
      new ListenForUserReviewsErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListenForUserReviewsError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ListenForUserReviewsError')
          ..add('error', error))
        .toString();
  }
}

class ListenForUserReviewsErrorBuilder
    implements
        Builder<ListenForUserReviewsError, ListenForUserReviewsErrorBuilder> {
  _$ListenForUserReviewsError _$v;

  Object _error;
  Object get error => _$this._error;
  set error(Object error) => _$this._error = error;

  ListenForUserReviewsErrorBuilder();

  ListenForUserReviewsErrorBuilder get _$this {
    if (_$v != null) {
      _error = _$v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForUserReviewsError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ListenForUserReviewsError;
  }

  @override
  void update(void Function(ListenForUserReviewsErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForUserReviewsError build() {
    final _$result = _$v ?? new _$ListenForUserReviewsError._(error: error);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
