// GENERATED CODE - DO NOT MODIFY BY HAND

part of reviews_actions;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateRestaurantReview extends CreateRestaurantReview {
  @override
  final String text;
  @override
  final int stars;
  @override
  final ActionResult? result;

  factory _$CreateRestaurantReview(
          [void Function(CreateRestaurantReviewBuilder)? updates]) =>
      (new CreateRestaurantReviewBuilder()..update(updates)).build();

  _$CreateRestaurantReview._(
      {required this.text, required this.stars, this.result})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        text, 'CreateRestaurantReview', 'text');
    BuiltValueNullFieldError.checkNotNull(
        stars, 'CreateRestaurantReview', 'stars');
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
  _$CreateRestaurantReview? _$v;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  int? _stars;
  int? get stars => _$this._stars;
  set stars(int? stars) => _$this._stars = stars;

  ActionResult? _result;
  ActionResult? get result => _$this._result;
  set result(ActionResult? result) => _$this._result = result;

  CreateRestaurantReviewBuilder();

  CreateRestaurantReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _text = $v.text;
      _stars = $v.stars;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestaurantReview other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRestaurantReview;
  }

  @override
  void update(void Function(CreateRestaurantReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateRestaurantReview build() {
    final _$result = _$v ??
        new _$CreateRestaurantReview._(
            text: BuiltValueNullFieldError.checkNotNull(
                text, 'CreateRestaurantReview', 'text'),
            stars: BuiltValueNullFieldError.checkNotNull(
                stars, 'CreateRestaurantReview', 'stars'),
            result: result);
    replace(_$result);
    return _$result;
  }
}

class _$CreateRestaurantReviewSuccessful
    extends CreateRestaurantReviewSuccessful {
  @override
  final RestaurantReview restaurantReview;

  factory _$CreateRestaurantReviewSuccessful(
          [void Function(CreateRestaurantReviewSuccessfulBuilder)? updates]) =>
      (new CreateRestaurantReviewSuccessfulBuilder()..update(updates)).build();

  _$CreateRestaurantReviewSuccessful._({required this.restaurantReview})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(restaurantReview,
        'CreateRestaurantReviewSuccessful', 'restaurantReview');
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
  _$CreateRestaurantReviewSuccessful? _$v;

  RestaurantReviewBuilder? _restaurantReview;
  RestaurantReviewBuilder get restaurantReview =>
      _$this._restaurantReview ??= new RestaurantReviewBuilder();
  set restaurantReview(RestaurantReviewBuilder? restaurantReview) =>
      _$this._restaurantReview = restaurantReview;

  CreateRestaurantReviewSuccessfulBuilder();

  CreateRestaurantReviewSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restaurantReview = $v.restaurantReview.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestaurantReviewSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRestaurantReviewSuccessful;
  }

  @override
  void update(void Function(CreateRestaurantReviewSuccessfulBuilder)? updates) {
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
      late String _$failedField;
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
          [void Function(CreateRestaurantReviewErrorBuilder)? updates]) =>
      (new CreateRestaurantReviewErrorBuilder()..update(updates)).build();

  _$CreateRestaurantReviewError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'CreateRestaurantReviewError', 'error');
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
  _$CreateRestaurantReviewError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  CreateRestaurantReviewErrorBuilder();

  CreateRestaurantReviewErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateRestaurantReviewError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreateRestaurantReviewError;
  }

  @override
  void update(void Function(CreateRestaurantReviewErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreateRestaurantReviewError build() {
    final _$result = _$v ??
        new _$CreateRestaurantReviewError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'CreateRestaurantReviewError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$GetUserForReview extends GetUserForReview {
  @override
  final String uid;

  factory _$GetUserForReview(
          [void Function(GetUserForReviewBuilder)? updates]) =>
      (new GetUserForReviewBuilder()..update(updates)).build();

  _$GetUserForReview._({required this.uid}) : super._() {
    BuiltValueNullFieldError.checkNotNull(uid, 'GetUserForReview', 'uid');
  }

  @override
  GetUserForReview rebuild(void Function(GetUserForReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserForReviewBuilder toBuilder() =>
      new GetUserForReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserForReview && uid == other.uid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, uid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUserForReview')..add('uid', uid))
        .toString();
  }
}

class GetUserForReviewBuilder
    implements Builder<GetUserForReview, GetUserForReviewBuilder> {
  _$GetUserForReview? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  GetUserForReviewBuilder();

  GetUserForReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserForReview other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserForReview;
  }

  @override
  void update(void Function(GetUserForReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserForReview build() {
    final _$result = _$v ??
        new _$GetUserForReview._(
            uid: BuiltValueNullFieldError.checkNotNull(
                uid, 'GetUserForReview', 'uid'));
    replace(_$result);
    return _$result;
  }
}

class _$GetUserForReviewSuccessful extends GetUserForReviewSuccessful {
  @override
  final AppUser user;

  factory _$GetUserForReviewSuccessful(
          [void Function(GetUserForReviewSuccessfulBuilder)? updates]) =>
      (new GetUserForReviewSuccessfulBuilder()..update(updates)).build();

  _$GetUserForReviewSuccessful._({required this.user}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        user, 'GetUserForReviewSuccessful', 'user');
  }

  @override
  GetUserForReviewSuccessful rebuild(
          void Function(GetUserForReviewSuccessfulBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserForReviewSuccessfulBuilder toBuilder() =>
      new GetUserForReviewSuccessfulBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserForReviewSuccessful && user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(0, user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUserForReviewSuccessful')
          ..add('user', user))
        .toString();
  }
}

class GetUserForReviewSuccessfulBuilder
    implements
        Builder<GetUserForReviewSuccessful, GetUserForReviewSuccessfulBuilder> {
  _$GetUserForReviewSuccessful? _$v;

  AppUserBuilder? _user;
  AppUserBuilder get user => _$this._user ??= new AppUserBuilder();
  set user(AppUserBuilder? user) => _$this._user = user;

  GetUserForReviewSuccessfulBuilder();

  GetUserForReviewSuccessfulBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserForReviewSuccessful other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserForReviewSuccessful;
  }

  @override
  void update(void Function(GetUserForReviewSuccessfulBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserForReviewSuccessful build() {
    _$GetUserForReviewSuccessful _$result;
    try {
      _$result = _$v ?? new _$GetUserForReviewSuccessful._(user: user.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUserForReviewSuccessful', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GetUserForReviewError extends GetUserForReviewError {
  @override
  final Object error;

  factory _$GetUserForReviewError(
          [void Function(GetUserForReviewErrorBuilder)? updates]) =>
      (new GetUserForReviewErrorBuilder()..update(updates)).build();

  _$GetUserForReviewError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'GetUserForReviewError', 'error');
  }

  @override
  GetUserForReviewError rebuild(
          void Function(GetUserForReviewErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUserForReviewErrorBuilder toBuilder() =>
      new GetUserForReviewErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUserForReviewError && error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(0, error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUserForReviewError')
          ..add('error', error))
        .toString();
  }
}

class GetUserForReviewErrorBuilder
    implements Builder<GetUserForReviewError, GetUserForReviewErrorBuilder> {
  _$GetUserForReviewError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  GetUserForReviewErrorBuilder();

  GetUserForReviewErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUserForReviewError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUserForReviewError;
  }

  @override
  void update(void Function(GetUserForReviewErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUserForReviewError build() {
    final _$result = _$v ??
        new _$GetUserForReviewError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'GetUserForReviewError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$ListenForReviews extends ListenForReviews {
  factory _$ListenForReviews(
          [void Function(ListenForReviewsBuilder)? updates]) =>
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
  _$ListenForReviews? _$v;

  ListenForReviewsBuilder();

  @override
  void replace(ListenForReviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListenForReviews;
  }

  @override
  void update(void Function(ListenForReviewsBuilder)? updates) {
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
          [void Function(StopListenForReviewsBuilder)? updates]) =>
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
  _$StopListenForReviews? _$v;

  StopListenForReviewsBuilder();

  @override
  void replace(StopListenForReviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopListenForReviews;
  }

  @override
  void update(void Function(StopListenForReviewsBuilder)? updates) {
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

  factory _$OnReviewsEvent([void Function(OnReviewsEventBuilder)? updates]) =>
      (new OnReviewsEventBuilder()..update(updates)).build();

  _$OnReviewsEvent._({required this.reviews}) : super._() {
    BuiltValueNullFieldError.checkNotNull(reviews, 'OnReviewsEvent', 'reviews');
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
  _$OnReviewsEvent? _$v;

  ListBuilder<RestaurantReview>? _reviews;
  ListBuilder<RestaurantReview> get reviews =>
      _$this._reviews ??= new ListBuilder<RestaurantReview>();
  set reviews(ListBuilder<RestaurantReview>? reviews) =>
      _$this._reviews = reviews;

  OnReviewsEventBuilder();

  OnReviewsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reviews = $v.reviews.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnReviewsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnReviewsEvent;
  }

  @override
  void update(void Function(OnReviewsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnReviewsEvent build() {
    _$OnReviewsEvent _$result;
    try {
      _$result = _$v ?? new _$OnReviewsEvent._(reviews: reviews.build());
    } catch (_) {
      late String _$failedField;
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
          [void Function(ListenForReviewsErrorBuilder)? updates]) =>
      (new ListenForReviewsErrorBuilder()..update(updates)).build();

  _$ListenForReviewsError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'ListenForReviewsError', 'error');
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
  _$ListenForReviewsError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  ListenForReviewsErrorBuilder();

  ListenForReviewsErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForReviewsError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListenForReviewsError;
  }

  @override
  void update(void Function(ListenForReviewsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForReviewsError build() {
    final _$result = _$v ??
        new _$ListenForReviewsError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'ListenForReviewsError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$ListenForUserReviews extends ListenForUserReviews {
  factory _$ListenForUserReviews(
          [void Function(ListenForUserReviewsBuilder)? updates]) =>
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
  _$ListenForUserReviews? _$v;

  ListenForUserReviewsBuilder();

  @override
  void replace(ListenForUserReviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListenForUserReviews;
  }

  @override
  void update(void Function(ListenForUserReviewsBuilder)? updates) {
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
          [void Function(StopListenForUserReviewsBuilder)? updates]) =>
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
  _$StopListenForUserReviews? _$v;

  StopListenForUserReviewsBuilder();

  @override
  void replace(StopListenForUserReviews other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$StopListenForUserReviews;
  }

  @override
  void update(void Function(StopListenForUserReviewsBuilder)? updates) {
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
          [void Function(OnUserReviewsEventBuilder)? updates]) =>
      (new OnUserReviewsEventBuilder()..update(updates)).build();

  _$OnUserReviewsEvent._({required this.userReviews}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        userReviews, 'OnUserReviewsEvent', 'userReviews');
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
  _$OnUserReviewsEvent? _$v;

  ListBuilder<RestaurantReview>? _userReviews;
  ListBuilder<RestaurantReview> get userReviews =>
      _$this._userReviews ??= new ListBuilder<RestaurantReview>();
  set userReviews(ListBuilder<RestaurantReview>? userReviews) =>
      _$this._userReviews = userReviews;

  OnUserReviewsEventBuilder();

  OnUserReviewsEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userReviews = $v.userReviews.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OnUserReviewsEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OnUserReviewsEvent;
  }

  @override
  void update(void Function(OnUserReviewsEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OnUserReviewsEvent build() {
    _$OnUserReviewsEvent _$result;
    try {
      _$result =
          _$v ?? new _$OnUserReviewsEvent._(userReviews: userReviews.build());
    } catch (_) {
      late String _$failedField;
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
          [void Function(ListenForUserReviewsErrorBuilder)? updates]) =>
      (new ListenForUserReviewsErrorBuilder()..update(updates)).build();

  _$ListenForUserReviewsError._({required this.error}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        error, 'ListenForUserReviewsError', 'error');
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
  _$ListenForUserReviewsError? _$v;

  Object? _error;
  Object? get error => _$this._error;
  set error(Object? error) => _$this._error = error;

  ListenForUserReviewsErrorBuilder();

  ListenForUserReviewsErrorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListenForUserReviewsError other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ListenForUserReviewsError;
  }

  @override
  void update(void Function(ListenForUserReviewsErrorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ListenForUserReviewsError build() {
    final _$result = _$v ??
        new _$ListenForUserReviewsError._(
            error: BuiltValueNullFieldError.checkNotNull(
                error, 'ListenForUserReviewsError', 'error'));
    replace(_$result);
    return _$result;
  }
}

class _$SetSelectedReview extends SetSelectedReview {
  @override
  final String reviewUid;

  factory _$SetSelectedReview(
          [void Function(SetSelectedReviewBuilder)? updates]) =>
      (new SetSelectedReviewBuilder()..update(updates)).build();

  _$SetSelectedReview._({required this.reviewUid}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        reviewUid, 'SetSelectedReview', 'reviewUid');
  }

  @override
  SetSelectedReview rebuild(void Function(SetSelectedReviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetSelectedReviewBuilder toBuilder() =>
      new SetSelectedReviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetSelectedReview && reviewUid == other.reviewUid;
  }

  @override
  int get hashCode {
    return $jf($jc(0, reviewUid.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SetSelectedReview')
          ..add('reviewUid', reviewUid))
        .toString();
  }
}

class SetSelectedReviewBuilder
    implements Builder<SetSelectedReview, SetSelectedReviewBuilder> {
  _$SetSelectedReview? _$v;

  String? _reviewUid;
  String? get reviewUid => _$this._reviewUid;
  set reviewUid(String? reviewUid) => _$this._reviewUid = reviewUid;

  SetSelectedReviewBuilder();

  SetSelectedReviewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reviewUid = $v.reviewUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSelectedReview other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetSelectedReview;
  }

  @override
  void update(void Function(SetSelectedReviewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetSelectedReview build() {
    final _$result = _$v ??
        new _$SetSelectedReview._(
            reviewUid: BuiltValueNullFieldError.checkNotNull(
                reviewUid, 'SetSelectedReview', 'reviewUid'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
