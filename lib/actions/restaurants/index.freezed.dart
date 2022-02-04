// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of restaurant_actions;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddToFavoriteTearOff {
  const _$AddToFavoriteTearOff();

  AddToFavorite$ call(
      {required String userId, required Restaurant selectedRestaurant}) {
    return AddToFavorite$(
      userId: userId,
      selectedRestaurant: selectedRestaurant,
    );
  }

  AddToFavoriteSuccessful successful(FavoriteRestaurant restaurant) {
    return AddToFavoriteSuccessful(
      restaurant,
    );
  }

  AddToFavoriteError error(Object error, StackTrace stackTrace) {
    return AddToFavoriteError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $AddToFavorite = _$AddToFavoriteTearOff();

/// @nodoc
mixin _$AddToFavorite {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant) $default, {
    required TResult Function(FavoriteRestaurant restaurant) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant)? $default, {
    TResult Function(FavoriteRestaurant restaurant)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant)? $default, {
    TResult Function(FavoriteRestaurant restaurant)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddToFavorite$ value) $default, {
    required TResult Function(AddToFavoriteSuccessful value) successful,
    required TResult Function(AddToFavoriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddToFavorite$ value)? $default, {
    TResult Function(AddToFavoriteSuccessful value)? successful,
    TResult Function(AddToFavoriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddToFavorite$ value)? $default, {
    TResult Function(AddToFavoriteSuccessful value)? successful,
    TResult Function(AddToFavoriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFavoriteCopyWith<$Res> {
  factory $AddToFavoriteCopyWith(
          AddToFavorite value, $Res Function(AddToFavorite) then) =
      _$AddToFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddToFavoriteCopyWithImpl<$Res>
    implements $AddToFavoriteCopyWith<$Res> {
  _$AddToFavoriteCopyWithImpl(this._value, this._then);

  final AddToFavorite _value;
  // ignore: unused_field
  final $Res Function(AddToFavorite) _then;
}

/// @nodoc
abstract class $AddToFavorite$CopyWith<$Res> {
  factory $AddToFavorite$CopyWith(
          AddToFavorite$ value, $Res Function(AddToFavorite$) then) =
      _$AddToFavorite$CopyWithImpl<$Res>;
  $Res call({String userId, Restaurant selectedRestaurant});

  $RestaurantCopyWith<$Res> get selectedRestaurant;
}

/// @nodoc
class _$AddToFavorite$CopyWithImpl<$Res>
    extends _$AddToFavoriteCopyWithImpl<$Res>
    implements $AddToFavorite$CopyWith<$Res> {
  _$AddToFavorite$CopyWithImpl(
      AddToFavorite$ _value, $Res Function(AddToFavorite$) _then)
      : super(_value, (v) => _then(v as AddToFavorite$));

  @override
  AddToFavorite$ get _value => super._value as AddToFavorite$;

  @override
  $Res call({
    Object? userId = freezed,
    Object? selectedRestaurant = freezed,
  }) {
    return _then(AddToFavorite$(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      selectedRestaurant: selectedRestaurant == freezed
          ? _value.selectedRestaurant
          : selectedRestaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  $RestaurantCopyWith<$Res> get selectedRestaurant {
    return $RestaurantCopyWith<$Res>(_value.selectedRestaurant, (value) {
      return _then(_value.copyWith(selectedRestaurant: value));
    });
  }
}

/// @nodoc

class _$AddToFavorite$ implements AddToFavorite$ {
  const _$AddToFavorite$(
      {required this.userId, required this.selectedRestaurant});

  @override
  final String userId;
  @override
  final Restaurant selectedRestaurant;

  @override
  String toString() {
    return 'AddToFavorite(userId: $userId, selectedRestaurant: $selectedRestaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddToFavorite$ &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.selectedRestaurant, selectedRestaurant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(selectedRestaurant));

  @JsonKey(ignore: true)
  @override
  $AddToFavorite$CopyWith<AddToFavorite$> get copyWith =>
      _$AddToFavorite$CopyWithImpl<AddToFavorite$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant) $default, {
    required TResult Function(FavoriteRestaurant restaurant) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(userId, selectedRestaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant)? $default, {
    TResult Function(FavoriteRestaurant restaurant)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(userId, selectedRestaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant)? $default, {
    TResult Function(FavoriteRestaurant restaurant)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userId, selectedRestaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddToFavorite$ value) $default, {
    required TResult Function(AddToFavoriteSuccessful value) successful,
    required TResult Function(AddToFavoriteError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddToFavorite$ value)? $default, {
    TResult Function(AddToFavoriteSuccessful value)? successful,
    TResult Function(AddToFavoriteError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddToFavorite$ value)? $default, {
    TResult Function(AddToFavoriteSuccessful value)? successful,
    TResult Function(AddToFavoriteError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class AddToFavorite$ implements AddToFavorite {
  const factory AddToFavorite$(
      {required String userId,
      required Restaurant selectedRestaurant}) = _$AddToFavorite$;

  String get userId;
  Restaurant get selectedRestaurant;
  @JsonKey(ignore: true)
  $AddToFavorite$CopyWith<AddToFavorite$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFavoriteSuccessfulCopyWith<$Res> {
  factory $AddToFavoriteSuccessfulCopyWith(AddToFavoriteSuccessful value,
          $Res Function(AddToFavoriteSuccessful) then) =
      _$AddToFavoriteSuccessfulCopyWithImpl<$Res>;
  $Res call({FavoriteRestaurant restaurant});

  $FavoriteRestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class _$AddToFavoriteSuccessfulCopyWithImpl<$Res>
    extends _$AddToFavoriteCopyWithImpl<$Res>
    implements $AddToFavoriteSuccessfulCopyWith<$Res> {
  _$AddToFavoriteSuccessfulCopyWithImpl(AddToFavoriteSuccessful _value,
      $Res Function(AddToFavoriteSuccessful) _then)
      : super(_value, (v) => _then(v as AddToFavoriteSuccessful));

  @override
  AddToFavoriteSuccessful get _value => super._value as AddToFavoriteSuccessful;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(AddToFavoriteSuccessful(
      restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as FavoriteRestaurant,
    ));
  }

  @override
  $FavoriteRestaurantCopyWith<$Res> get restaurant {
    return $FavoriteRestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc

class _$AddToFavoriteSuccessful implements AddToFavoriteSuccessful {
  const _$AddToFavoriteSuccessful(this.restaurant);

  @override
  final FavoriteRestaurant restaurant;

  @override
  String toString() {
    return 'AddToFavorite.successful(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddToFavoriteSuccessful &&
            const DeepCollectionEquality()
                .equals(other.restaurant, restaurant));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(restaurant));

  @JsonKey(ignore: true)
  @override
  $AddToFavoriteSuccessfulCopyWith<AddToFavoriteSuccessful> get copyWith =>
      _$AddToFavoriteSuccessfulCopyWithImpl<AddToFavoriteSuccessful>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant) $default, {
    required TResult Function(FavoriteRestaurant restaurant) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant)? $default, {
    TResult Function(FavoriteRestaurant restaurant)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant)? $default, {
    TResult Function(FavoriteRestaurant restaurant)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddToFavorite$ value) $default, {
    required TResult Function(AddToFavoriteSuccessful value) successful,
    required TResult Function(AddToFavoriteError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddToFavorite$ value)? $default, {
    TResult Function(AddToFavoriteSuccessful value)? successful,
    TResult Function(AddToFavoriteError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddToFavorite$ value)? $default, {
    TResult Function(AddToFavoriteSuccessful value)? successful,
    TResult Function(AddToFavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class AddToFavoriteSuccessful implements AddToFavorite {
  const factory AddToFavoriteSuccessful(FavoriteRestaurant restaurant) =
      _$AddToFavoriteSuccessful;

  FavoriteRestaurant get restaurant;
  @JsonKey(ignore: true)
  $AddToFavoriteSuccessfulCopyWith<AddToFavoriteSuccessful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddToFavoriteErrorCopyWith<$Res> {
  factory $AddToFavoriteErrorCopyWith(
          AddToFavoriteError value, $Res Function(AddToFavoriteError) then) =
      _$AddToFavoriteErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$AddToFavoriteErrorCopyWithImpl<$Res>
    extends _$AddToFavoriteCopyWithImpl<$Res>
    implements $AddToFavoriteErrorCopyWith<$Res> {
  _$AddToFavoriteErrorCopyWithImpl(
      AddToFavoriteError _value, $Res Function(AddToFavoriteError) _then)
      : super(_value, (v) => _then(v as AddToFavoriteError));

  @override
  AddToFavoriteError get _value => super._value as AddToFavoriteError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(AddToFavoriteError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$AddToFavoriteError implements AddToFavoriteError {
  const _$AddToFavoriteError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'AddToFavorite.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddToFavoriteError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $AddToFavoriteErrorCopyWith<AddToFavoriteError> get copyWith =>
      _$AddToFavoriteErrorCopyWithImpl<AddToFavoriteError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant) $default, {
    required TResult Function(FavoriteRestaurant restaurant) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant)? $default, {
    TResult Function(FavoriteRestaurant restaurant)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String userId, Restaurant selectedRestaurant)? $default, {
    TResult Function(FavoriteRestaurant restaurant)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(AddToFavorite$ value) $default, {
    required TResult Function(AddToFavoriteSuccessful value) successful,
    required TResult Function(AddToFavoriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(AddToFavorite$ value)? $default, {
    TResult Function(AddToFavoriteSuccessful value)? successful,
    TResult Function(AddToFavoriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(AddToFavorite$ value)? $default, {
    TResult Function(AddToFavoriteSuccessful value)? successful,
    TResult Function(AddToFavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AddToFavoriteError implements AddToFavorite, ErrorAction {
  const factory AddToFavoriteError(Object error, StackTrace stackTrace) =
      _$AddToFavoriteError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $AddToFavoriteErrorCopyWith<AddToFavoriteError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CreateRestaurantReviewTearOff {
  const _$CreateRestaurantReviewTearOff();

  CreateRestaurantReview$ call(
      {required String text, required int rating, ActionResult? actionResult}) {
    return CreateRestaurantReview$(
      text: text,
      rating: rating,
      actionResult: actionResult,
    );
  }

  CreateRestaurantReviewSuccessful successful(Review review) {
    return CreateRestaurantReviewSuccessful(
      review,
    );
  }

  CreateRestaurantReviewError error(Object error, StackTrace stackTrace) {
    return CreateRestaurantReviewError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $CreateRestaurantReview = _$CreateRestaurantReviewTearOff();

/// @nodoc
mixin _$CreateRestaurantReview {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)
        $default, {
    required TResult Function(Review review) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)?
        $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)?
        $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value) $default, {
    required TResult Function(CreateRestaurantReviewSuccessful value)
        successful,
    required TResult Function(CreateRestaurantReviewError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value)? $default, {
    TResult Function(CreateRestaurantReviewSuccessful value)? successful,
    TResult Function(CreateRestaurantReviewError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value)? $default, {
    TResult Function(CreateRestaurantReviewSuccessful value)? successful,
    TResult Function(CreateRestaurantReviewError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRestaurantReviewCopyWith<$Res> {
  factory $CreateRestaurantReviewCopyWith(CreateRestaurantReview value,
          $Res Function(CreateRestaurantReview) then) =
      _$CreateRestaurantReviewCopyWithImpl<$Res>;
}

/// @nodoc
class _$CreateRestaurantReviewCopyWithImpl<$Res>
    implements $CreateRestaurantReviewCopyWith<$Res> {
  _$CreateRestaurantReviewCopyWithImpl(this._value, this._then);

  final CreateRestaurantReview _value;
  // ignore: unused_field
  final $Res Function(CreateRestaurantReview) _then;
}

/// @nodoc
abstract class $CreateRestaurantReview$CopyWith<$Res> {
  factory $CreateRestaurantReview$CopyWith(CreateRestaurantReview$ value,
          $Res Function(CreateRestaurantReview$) then) =
      _$CreateRestaurantReview$CopyWithImpl<$Res>;
  $Res call({String text, int rating, ActionResult? actionResult});
}

/// @nodoc
class _$CreateRestaurantReview$CopyWithImpl<$Res>
    extends _$CreateRestaurantReviewCopyWithImpl<$Res>
    implements $CreateRestaurantReview$CopyWith<$Res> {
  _$CreateRestaurantReview$CopyWithImpl(CreateRestaurantReview$ _value,
      $Res Function(CreateRestaurantReview$) _then)
      : super(_value, (v) => _then(v as CreateRestaurantReview$));

  @override
  CreateRestaurantReview$ get _value => super._value as CreateRestaurantReview$;

  @override
  $Res call({
    Object? text = freezed,
    Object? rating = freezed,
    Object? actionResult = freezed,
  }) {
    return _then(CreateRestaurantReview$(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int,
      actionResult: actionResult == freezed
          ? _value.actionResult
          : actionResult // ignore: cast_nullable_to_non_nullable
              as ActionResult?,
    ));
  }
}

/// @nodoc

class _$CreateRestaurantReview$ implements CreateRestaurantReview$ {
  const _$CreateRestaurantReview$(
      {required this.text, required this.rating, this.actionResult});

  @override
  final String text;
  @override
  final int rating;
  @override
  final ActionResult? actionResult;

  @override
  String toString() {
    return 'CreateRestaurantReview(text: $text, rating: $rating, actionResult: $actionResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateRestaurantReview$ &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            (identical(other.actionResult, actionResult) ||
                other.actionResult == actionResult));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(rating),
      actionResult);

  @JsonKey(ignore: true)
  @override
  $CreateRestaurantReview$CopyWith<CreateRestaurantReview$> get copyWith =>
      _$CreateRestaurantReview$CopyWithImpl<CreateRestaurantReview$>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)
        $default, {
    required TResult Function(Review review) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(text, rating, actionResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)?
        $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(text, rating, actionResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)?
        $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(text, rating, actionResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value) $default, {
    required TResult Function(CreateRestaurantReviewSuccessful value)
        successful,
    required TResult Function(CreateRestaurantReviewError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value)? $default, {
    TResult Function(CreateRestaurantReviewSuccessful value)? successful,
    TResult Function(CreateRestaurantReviewError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value)? $default, {
    TResult Function(CreateRestaurantReviewSuccessful value)? successful,
    TResult Function(CreateRestaurantReviewError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CreateRestaurantReview$ implements CreateRestaurantReview {
  const factory CreateRestaurantReview$(
      {required String text,
      required int rating,
      ActionResult? actionResult}) = _$CreateRestaurantReview$;

  String get text;
  int get rating;
  ActionResult? get actionResult;
  @JsonKey(ignore: true)
  $CreateRestaurantReview$CopyWith<CreateRestaurantReview$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRestaurantReviewSuccessfulCopyWith<$Res> {
  factory $CreateRestaurantReviewSuccessfulCopyWith(
          CreateRestaurantReviewSuccessful value,
          $Res Function(CreateRestaurantReviewSuccessful) then) =
      _$CreateRestaurantReviewSuccessfulCopyWithImpl<$Res>;
  $Res call({Review review});

  $ReviewCopyWith<$Res> get review;
}

/// @nodoc
class _$CreateRestaurantReviewSuccessfulCopyWithImpl<$Res>
    extends _$CreateRestaurantReviewCopyWithImpl<$Res>
    implements $CreateRestaurantReviewSuccessfulCopyWith<$Res> {
  _$CreateRestaurantReviewSuccessfulCopyWithImpl(
      CreateRestaurantReviewSuccessful _value,
      $Res Function(CreateRestaurantReviewSuccessful) _then)
      : super(_value, (v) => _then(v as CreateRestaurantReviewSuccessful));

  @override
  CreateRestaurantReviewSuccessful get _value =>
      super._value as CreateRestaurantReviewSuccessful;

  @override
  $Res call({
    Object? review = freezed,
  }) {
    return _then(CreateRestaurantReviewSuccessful(
      review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as Review,
    ));
  }

  @override
  $ReviewCopyWith<$Res> get review {
    return $ReviewCopyWith<$Res>(_value.review, (value) {
      return _then(_value.copyWith(review: value));
    });
  }
}

/// @nodoc

class _$CreateRestaurantReviewSuccessful
    implements CreateRestaurantReviewSuccessful {
  const _$CreateRestaurantReviewSuccessful(this.review);

  @override
  final Review review;

  @override
  String toString() {
    return 'CreateRestaurantReview.successful(review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateRestaurantReviewSuccessful &&
            const DeepCollectionEquality().equals(other.review, review));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(review));

  @JsonKey(ignore: true)
  @override
  $CreateRestaurantReviewSuccessfulCopyWith<CreateRestaurantReviewSuccessful>
      get copyWith => _$CreateRestaurantReviewSuccessfulCopyWithImpl<
          CreateRestaurantReviewSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)
        $default, {
    required TResult Function(Review review) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(review);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)?
        $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(review);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)?
        $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(review);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value) $default, {
    required TResult Function(CreateRestaurantReviewSuccessful value)
        successful,
    required TResult Function(CreateRestaurantReviewError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value)? $default, {
    TResult Function(CreateRestaurantReviewSuccessful value)? successful,
    TResult Function(CreateRestaurantReviewError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value)? $default, {
    TResult Function(CreateRestaurantReviewSuccessful value)? successful,
    TResult Function(CreateRestaurantReviewError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class CreateRestaurantReviewSuccessful
    implements CreateRestaurantReview {
  const factory CreateRestaurantReviewSuccessful(Review review) =
      _$CreateRestaurantReviewSuccessful;

  Review get review;
  @JsonKey(ignore: true)
  $CreateRestaurantReviewSuccessfulCopyWith<CreateRestaurantReviewSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateRestaurantReviewErrorCopyWith<$Res> {
  factory $CreateRestaurantReviewErrorCopyWith(
          CreateRestaurantReviewError value,
          $Res Function(CreateRestaurantReviewError) then) =
      _$CreateRestaurantReviewErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$CreateRestaurantReviewErrorCopyWithImpl<$Res>
    extends _$CreateRestaurantReviewCopyWithImpl<$Res>
    implements $CreateRestaurantReviewErrorCopyWith<$Res> {
  _$CreateRestaurantReviewErrorCopyWithImpl(CreateRestaurantReviewError _value,
      $Res Function(CreateRestaurantReviewError) _then)
      : super(_value, (v) => _then(v as CreateRestaurantReviewError));

  @override
  CreateRestaurantReviewError get _value =>
      super._value as CreateRestaurantReviewError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(CreateRestaurantReviewError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$CreateRestaurantReviewError implements CreateRestaurantReviewError {
  const _$CreateRestaurantReviewError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'CreateRestaurantReview.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CreateRestaurantReviewError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $CreateRestaurantReviewErrorCopyWith<CreateRestaurantReviewError>
      get copyWith => _$CreateRestaurantReviewErrorCopyWithImpl<
          CreateRestaurantReviewError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)
        $default, {
    required TResult Function(Review review) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)?
        $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String text, int rating, ActionResult? actionResult)?
        $default, {
    TResult Function(Review review)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value) $default, {
    required TResult Function(CreateRestaurantReviewSuccessful value)
        successful,
    required TResult Function(CreateRestaurantReviewError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value)? $default, {
    TResult Function(CreateRestaurantReviewSuccessful value)? successful,
    TResult Function(CreateRestaurantReviewError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CreateRestaurantReview$ value)? $default, {
    TResult Function(CreateRestaurantReviewSuccessful value)? successful,
    TResult Function(CreateRestaurantReviewError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CreateRestaurantReviewError
    implements CreateRestaurantReview, ErrorAction {
  const factory CreateRestaurantReviewError(
      Object error, StackTrace stackTrace) = _$CreateRestaurantReviewError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $CreateRestaurantReviewErrorCopyWith<CreateRestaurantReviewError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetFavoriteRestaurantsTearOff {
  const _$GetFavoriteRestaurantsTearOff();

  GetFavoriteRestaurantsStart start(
      {String pendingId = _kGetFavoriteRestaurantsPendingId}) {
    return GetFavoriteRestaurantsStart(
      pendingId: pendingId,
    );
  }

  GetFavoriteRestaurantsSuccessful successful(
      List<FavoriteRestaurant> restaurants,
      [String pendingId = _kGetFavoriteRestaurantsPendingId]) {
    return GetFavoriteRestaurantsSuccessful(
      restaurants,
      pendingId,
    );
  }

  GetFavoriteRestaurantsError error(Object error, StackTrace stackTrace,
      [String pendingId = _kGetFavoriteRestaurantsPendingId]) {
    return GetFavoriteRestaurantsError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetFavoriteRestaurants = _$GetFavoriteRestaurantsTearOff();

/// @nodoc
mixin _$GetFavoriteRestaurants {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(
            List<FavoriteRestaurant> restaurants, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<FavoriteRestaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<FavoriteRestaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoriteRestaurantsStart value) start,
    required TResult Function(GetFavoriteRestaurantsSuccessful value)
        successful,
    required TResult Function(GetFavoriteRestaurantsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFavoriteRestaurantsStart value)? start,
    TResult Function(GetFavoriteRestaurantsSuccessful value)? successful,
    TResult Function(GetFavoriteRestaurantsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoriteRestaurantsStart value)? start,
    TResult Function(GetFavoriteRestaurantsSuccessful value)? successful,
    TResult Function(GetFavoriteRestaurantsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetFavoriteRestaurantsCopyWith<GetFavoriteRestaurants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoriteRestaurantsCopyWith<$Res> {
  factory $GetFavoriteRestaurantsCopyWith(GetFavoriteRestaurants value,
          $Res Function(GetFavoriteRestaurants) then) =
      _$GetFavoriteRestaurantsCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetFavoriteRestaurantsCopyWithImpl<$Res>
    implements $GetFavoriteRestaurantsCopyWith<$Res> {
  _$GetFavoriteRestaurantsCopyWithImpl(this._value, this._then);

  final GetFavoriteRestaurants _value;
  // ignore: unused_field
  final $Res Function(GetFavoriteRestaurants) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetFavoriteRestaurantsStartCopyWith<$Res>
    implements $GetFavoriteRestaurantsCopyWith<$Res> {
  factory $GetFavoriteRestaurantsStartCopyWith(
          GetFavoriteRestaurantsStart value,
          $Res Function(GetFavoriteRestaurantsStart) then) =
      _$GetFavoriteRestaurantsStartCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$GetFavoriteRestaurantsStartCopyWithImpl<$Res>
    extends _$GetFavoriteRestaurantsCopyWithImpl<$Res>
    implements $GetFavoriteRestaurantsStartCopyWith<$Res> {
  _$GetFavoriteRestaurantsStartCopyWithImpl(GetFavoriteRestaurantsStart _value,
      $Res Function(GetFavoriteRestaurantsStart) _then)
      : super(_value, (v) => _then(v as GetFavoriteRestaurantsStart));

  @override
  GetFavoriteRestaurantsStart get _value =>
      super._value as GetFavoriteRestaurantsStart;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(GetFavoriteRestaurantsStart(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$GetFavoriteRestaurantsStart implements GetFavoriteRestaurantsStart {
  const _$GetFavoriteRestaurantsStart(
      {this.pendingId = _kGetFavoriteRestaurantsPendingId});

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetFavoriteRestaurants.start(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFavoriteRestaurantsStart &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetFavoriteRestaurantsStartCopyWith<GetFavoriteRestaurantsStart>
      get copyWith => _$GetFavoriteRestaurantsStartCopyWithImpl<
          GetFavoriteRestaurantsStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(
            List<FavoriteRestaurant> restaurants, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return start(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<FavoriteRestaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return start?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<FavoriteRestaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoriteRestaurantsStart value) start,
    required TResult Function(GetFavoriteRestaurantsSuccessful value)
        successful,
    required TResult Function(GetFavoriteRestaurantsError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFavoriteRestaurantsStart value)? start,
    TResult Function(GetFavoriteRestaurantsSuccessful value)? successful,
    TResult Function(GetFavoriteRestaurantsError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoriteRestaurantsStart value)? start,
    TResult Function(GetFavoriteRestaurantsSuccessful value)? successful,
    TResult Function(GetFavoriteRestaurantsError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetFavoriteRestaurantsStart
    implements GetFavoriteRestaurants, ActionStart {
  const factory GetFavoriteRestaurantsStart({String pendingId}) =
      _$GetFavoriteRestaurantsStart;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetFavoriteRestaurantsStartCopyWith<GetFavoriteRestaurantsStart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoriteRestaurantsSuccessfulCopyWith<$Res>
    implements $GetFavoriteRestaurantsCopyWith<$Res> {
  factory $GetFavoriteRestaurantsSuccessfulCopyWith(
          GetFavoriteRestaurantsSuccessful value,
          $Res Function(GetFavoriteRestaurantsSuccessful) then) =
      _$GetFavoriteRestaurantsSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({List<FavoriteRestaurant> restaurants, String pendingId});
}

/// @nodoc
class _$GetFavoriteRestaurantsSuccessfulCopyWithImpl<$Res>
    extends _$GetFavoriteRestaurantsCopyWithImpl<$Res>
    implements $GetFavoriteRestaurantsSuccessfulCopyWith<$Res> {
  _$GetFavoriteRestaurantsSuccessfulCopyWithImpl(
      GetFavoriteRestaurantsSuccessful _value,
      $Res Function(GetFavoriteRestaurantsSuccessful) _then)
      : super(_value, (v) => _then(v as GetFavoriteRestaurantsSuccessful));

  @override
  GetFavoriteRestaurantsSuccessful get _value =>
      super._value as GetFavoriteRestaurantsSuccessful;

  @override
  $Res call({
    Object? restaurants = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetFavoriteRestaurantsSuccessful(
      restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<FavoriteRestaurant>,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$GetFavoriteRestaurantsSuccessful
    implements GetFavoriteRestaurantsSuccessful {
  const _$GetFavoriteRestaurantsSuccessful(this.restaurants,
      [this.pendingId = _kGetFavoriteRestaurantsPendingId]);

  @override
  final List<FavoriteRestaurant> restaurants;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetFavoriteRestaurants.successful(restaurants: $restaurants, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFavoriteRestaurantsSuccessful &&
            const DeepCollectionEquality()
                .equals(other.restaurants, restaurants) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(restaurants),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetFavoriteRestaurantsSuccessfulCopyWith<GetFavoriteRestaurantsSuccessful>
      get copyWith => _$GetFavoriteRestaurantsSuccessfulCopyWithImpl<
          GetFavoriteRestaurantsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(
            List<FavoriteRestaurant> restaurants, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return successful(restaurants, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<FavoriteRestaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return successful?.call(restaurants, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<FavoriteRestaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(restaurants, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoriteRestaurantsStart value) start,
    required TResult Function(GetFavoriteRestaurantsSuccessful value)
        successful,
    required TResult Function(GetFavoriteRestaurantsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFavoriteRestaurantsStart value)? start,
    TResult Function(GetFavoriteRestaurantsSuccessful value)? successful,
    TResult Function(GetFavoriteRestaurantsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoriteRestaurantsStart value)? start,
    TResult Function(GetFavoriteRestaurantsSuccessful value)? successful,
    TResult Function(GetFavoriteRestaurantsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetFavoriteRestaurantsSuccessful
    implements GetFavoriteRestaurants, ActionDone {
  const factory GetFavoriteRestaurantsSuccessful(
      List<FavoriteRestaurant> restaurants,
      [String pendingId]) = _$GetFavoriteRestaurantsSuccessful;

  List<FavoriteRestaurant> get restaurants;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetFavoriteRestaurantsSuccessfulCopyWith<GetFavoriteRestaurantsSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetFavoriteRestaurantsErrorCopyWith<$Res>
    implements $GetFavoriteRestaurantsCopyWith<$Res> {
  factory $GetFavoriteRestaurantsErrorCopyWith(
          GetFavoriteRestaurantsError value,
          $Res Function(GetFavoriteRestaurantsError) then) =
      _$GetFavoriteRestaurantsErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetFavoriteRestaurantsErrorCopyWithImpl<$Res>
    extends _$GetFavoriteRestaurantsCopyWithImpl<$Res>
    implements $GetFavoriteRestaurantsErrorCopyWith<$Res> {
  _$GetFavoriteRestaurantsErrorCopyWithImpl(GetFavoriteRestaurantsError _value,
      $Res Function(GetFavoriteRestaurantsError) _then)
      : super(_value, (v) => _then(v as GetFavoriteRestaurantsError));

  @override
  GetFavoriteRestaurantsError get _value =>
      super._value as GetFavoriteRestaurantsError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetFavoriteRestaurantsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$GetFavoriteRestaurantsError implements GetFavoriteRestaurantsError {
  const _$GetFavoriteRestaurantsError(this.error, this.stackTrace,
      [this.pendingId = _kGetFavoriteRestaurantsPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetFavoriteRestaurants.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetFavoriteRestaurantsError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetFavoriteRestaurantsErrorCopyWith<GetFavoriteRestaurantsError>
      get copyWith => _$GetFavoriteRestaurantsErrorCopyWithImpl<
          GetFavoriteRestaurantsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(
            List<FavoriteRestaurant> restaurants, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<FavoriteRestaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<FavoriteRestaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFavoriteRestaurantsStart value) start,
    required TResult Function(GetFavoriteRestaurantsSuccessful value)
        successful,
    required TResult Function(GetFavoriteRestaurantsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetFavoriteRestaurantsStart value)? start,
    TResult Function(GetFavoriteRestaurantsSuccessful value)? successful,
    TResult Function(GetFavoriteRestaurantsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFavoriteRestaurantsStart value)? start,
    TResult Function(GetFavoriteRestaurantsSuccessful value)? successful,
    TResult Function(GetFavoriteRestaurantsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetFavoriteRestaurantsError
    implements GetFavoriteRestaurants, ActionDone, ErrorAction {
  const factory GetFavoriteRestaurantsError(Object error, StackTrace stackTrace,
      [String pendingId]) = _$GetFavoriteRestaurantsError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetFavoriteRestaurantsErrorCopyWith<GetFavoriteRestaurantsError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetRecommendedRestaurantsTearOff {
  const _$GetRecommendedRestaurantsTearOff();

  GetRecommendedRestaurantsStart start(
      {String pendingId = _kGetRecommendedRestaurantsPendingId}) {
    return GetRecommendedRestaurantsStart(
      pendingId: pendingId,
    );
  }

  GetRecommendedRestaurantsSuccessful successful(List<Restaurant> restaurants,
      [String pendingId = _kGetRecommendedRestaurantsPendingId]) {
    return GetRecommendedRestaurantsSuccessful(
      restaurants,
      pendingId,
    );
  }

  GetRecommendedRestaurantsError error(Object error, StackTrace stackTrace,
      [String pendingId = _kGetRecommendedRestaurantsPendingId]) {
    return GetRecommendedRestaurantsError(
      error,
      stackTrace,
      pendingId,
    );
  }
}

/// @nodoc
const $GetRecommendedRestaurants = _$GetRecommendedRestaurantsTearOff();

/// @nodoc
mixin _$GetRecommendedRestaurants {
  String get pendingId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(List<Restaurant> restaurants, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<Restaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<Restaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecommendedRestaurantsStart value) start,
    required TResult Function(GetRecommendedRestaurantsSuccessful value)
        successful,
    required TResult Function(GetRecommendedRestaurantsError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRecommendedRestaurantsStart value)? start,
    TResult Function(GetRecommendedRestaurantsSuccessful value)? successful,
    TResult Function(GetRecommendedRestaurantsError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecommendedRestaurantsStart value)? start,
    TResult Function(GetRecommendedRestaurantsSuccessful value)? successful,
    TResult Function(GetRecommendedRestaurantsError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetRecommendedRestaurantsCopyWith<GetRecommendedRestaurants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecommendedRestaurantsCopyWith<$Res> {
  factory $GetRecommendedRestaurantsCopyWith(GetRecommendedRestaurants value,
          $Res Function(GetRecommendedRestaurants) then) =
      _$GetRecommendedRestaurantsCopyWithImpl<$Res>;
  $Res call({String pendingId});
}

/// @nodoc
class _$GetRecommendedRestaurantsCopyWithImpl<$Res>
    implements $GetRecommendedRestaurantsCopyWith<$Res> {
  _$GetRecommendedRestaurantsCopyWithImpl(this._value, this._then);

  final GetRecommendedRestaurants _value;
  // ignore: unused_field
  final $Res Function(GetRecommendedRestaurants) _then;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(_value.copyWith(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $GetRecommendedRestaurantsStartCopyWith<$Res>
    implements $GetRecommendedRestaurantsCopyWith<$Res> {
  factory $GetRecommendedRestaurantsStartCopyWith(
          GetRecommendedRestaurantsStart value,
          $Res Function(GetRecommendedRestaurantsStart) then) =
      _$GetRecommendedRestaurantsStartCopyWithImpl<$Res>;
  @override
  $Res call({String pendingId});
}

/// @nodoc
class _$GetRecommendedRestaurantsStartCopyWithImpl<$Res>
    extends _$GetRecommendedRestaurantsCopyWithImpl<$Res>
    implements $GetRecommendedRestaurantsStartCopyWith<$Res> {
  _$GetRecommendedRestaurantsStartCopyWithImpl(
      GetRecommendedRestaurantsStart _value,
      $Res Function(GetRecommendedRestaurantsStart) _then)
      : super(_value, (v) => _then(v as GetRecommendedRestaurantsStart));

  @override
  GetRecommendedRestaurantsStart get _value =>
      super._value as GetRecommendedRestaurantsStart;

  @override
  $Res call({
    Object? pendingId = freezed,
  }) {
    return _then(GetRecommendedRestaurantsStart(
      pendingId: pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionStart>()
class _$GetRecommendedRestaurantsStart
    implements GetRecommendedRestaurantsStart {
  const _$GetRecommendedRestaurantsStart(
      {this.pendingId = _kGetRecommendedRestaurantsPendingId});

  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetRecommendedRestaurants.start(pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetRecommendedRestaurantsStart &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetRecommendedRestaurantsStartCopyWith<GetRecommendedRestaurantsStart>
      get copyWith => _$GetRecommendedRestaurantsStartCopyWithImpl<
          GetRecommendedRestaurantsStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(List<Restaurant> restaurants, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return start(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<Restaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return start?.call(pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<Restaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecommendedRestaurantsStart value) start,
    required TResult Function(GetRecommendedRestaurantsSuccessful value)
        successful,
    required TResult Function(GetRecommendedRestaurantsError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRecommendedRestaurantsStart value)? start,
    TResult Function(GetRecommendedRestaurantsSuccessful value)? successful,
    TResult Function(GetRecommendedRestaurantsError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecommendedRestaurantsStart value)? start,
    TResult Function(GetRecommendedRestaurantsSuccessful value)? successful,
    TResult Function(GetRecommendedRestaurantsError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class GetRecommendedRestaurantsStart
    implements GetRecommendedRestaurants, ActionStart {
  const factory GetRecommendedRestaurantsStart({String pendingId}) =
      _$GetRecommendedRestaurantsStart;

  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetRecommendedRestaurantsStartCopyWith<GetRecommendedRestaurantsStart>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecommendedRestaurantsSuccessfulCopyWith<$Res>
    implements $GetRecommendedRestaurantsCopyWith<$Res> {
  factory $GetRecommendedRestaurantsSuccessfulCopyWith(
          GetRecommendedRestaurantsSuccessful value,
          $Res Function(GetRecommendedRestaurantsSuccessful) then) =
      _$GetRecommendedRestaurantsSuccessfulCopyWithImpl<$Res>;
  @override
  $Res call({List<Restaurant> restaurants, String pendingId});
}

/// @nodoc
class _$GetRecommendedRestaurantsSuccessfulCopyWithImpl<$Res>
    extends _$GetRecommendedRestaurantsCopyWithImpl<$Res>
    implements $GetRecommendedRestaurantsSuccessfulCopyWith<$Res> {
  _$GetRecommendedRestaurantsSuccessfulCopyWithImpl(
      GetRecommendedRestaurantsSuccessful _value,
      $Res Function(GetRecommendedRestaurantsSuccessful) _then)
      : super(_value, (v) => _then(v as GetRecommendedRestaurantsSuccessful));

  @override
  GetRecommendedRestaurantsSuccessful get _value =>
      super._value as GetRecommendedRestaurantsSuccessful;

  @override
  $Res call({
    Object? restaurants = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetRecommendedRestaurantsSuccessful(
      restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
class _$GetRecommendedRestaurantsSuccessful
    implements GetRecommendedRestaurantsSuccessful {
  const _$GetRecommendedRestaurantsSuccessful(this.restaurants,
      [this.pendingId = _kGetRecommendedRestaurantsPendingId]);

  @override
  final List<Restaurant> restaurants;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetRecommendedRestaurants.successful(restaurants: $restaurants, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetRecommendedRestaurantsSuccessful &&
            const DeepCollectionEquality()
                .equals(other.restaurants, restaurants) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(restaurants),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetRecommendedRestaurantsSuccessfulCopyWith<
          GetRecommendedRestaurantsSuccessful>
      get copyWith => _$GetRecommendedRestaurantsSuccessfulCopyWithImpl<
          GetRecommendedRestaurantsSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(List<Restaurant> restaurants, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return successful(restaurants, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<Restaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return successful?.call(restaurants, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<Restaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(restaurants, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecommendedRestaurantsStart value) start,
    required TResult Function(GetRecommendedRestaurantsSuccessful value)
        successful,
    required TResult Function(GetRecommendedRestaurantsError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRecommendedRestaurantsStart value)? start,
    TResult Function(GetRecommendedRestaurantsSuccessful value)? successful,
    TResult Function(GetRecommendedRestaurantsError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecommendedRestaurantsStart value)? start,
    TResult Function(GetRecommendedRestaurantsSuccessful value)? successful,
    TResult Function(GetRecommendedRestaurantsError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetRecommendedRestaurantsSuccessful
    implements GetRecommendedRestaurants, ActionDone {
  const factory GetRecommendedRestaurantsSuccessful(
      List<Restaurant> restaurants,
      [String pendingId]) = _$GetRecommendedRestaurantsSuccessful;

  List<Restaurant> get restaurants;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetRecommendedRestaurantsSuccessfulCopyWith<
          GetRecommendedRestaurantsSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetRecommendedRestaurantsErrorCopyWith<$Res>
    implements $GetRecommendedRestaurantsCopyWith<$Res> {
  factory $GetRecommendedRestaurantsErrorCopyWith(
          GetRecommendedRestaurantsError value,
          $Res Function(GetRecommendedRestaurantsError) then) =
      _$GetRecommendedRestaurantsErrorCopyWithImpl<$Res>;
  @override
  $Res call({Object error, StackTrace stackTrace, String pendingId});
}

/// @nodoc
class _$GetRecommendedRestaurantsErrorCopyWithImpl<$Res>
    extends _$GetRecommendedRestaurantsCopyWithImpl<$Res>
    implements $GetRecommendedRestaurantsErrorCopyWith<$Res> {
  _$GetRecommendedRestaurantsErrorCopyWithImpl(
      GetRecommendedRestaurantsError _value,
      $Res Function(GetRecommendedRestaurantsError) _then)
      : super(_value, (v) => _then(v as GetRecommendedRestaurantsError));

  @override
  GetRecommendedRestaurantsError get _value =>
      super._value as GetRecommendedRestaurantsError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
    Object? pendingId = freezed,
  }) {
    return _then(GetRecommendedRestaurantsError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
      pendingId == freezed
          ? _value.pendingId
          : pendingId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@Implements<ActionDone>()
@Implements<ErrorAction>()
class _$GetRecommendedRestaurantsError
    implements GetRecommendedRestaurantsError {
  const _$GetRecommendedRestaurantsError(this.error, this.stackTrace,
      [this.pendingId = _kGetRecommendedRestaurantsPendingId]);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;
  @JsonKey()
  @override
  final String pendingId;

  @override
  String toString() {
    return 'GetRecommendedRestaurants.error(error: $error, stackTrace: $stackTrace, pendingId: $pendingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetRecommendedRestaurantsError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace) &&
            const DeepCollectionEquality().equals(other.pendingId, pendingId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace),
      const DeepCollectionEquality().hash(pendingId));

  @JsonKey(ignore: true)
  @override
  $GetRecommendedRestaurantsErrorCopyWith<GetRecommendedRestaurantsError>
      get copyWith => _$GetRecommendedRestaurantsErrorCopyWithImpl<
          GetRecommendedRestaurantsError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pendingId) start,
    required TResult Function(List<Restaurant> restaurants, String pendingId)
        successful,
    required TResult Function(
            Object error, StackTrace stackTrace, String pendingId)
        error,
  }) {
    return error(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<Restaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
  }) {
    return error?.call(this.error, stackTrace, pendingId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pendingId)? start,
    TResult Function(List<Restaurant> restaurants, String pendingId)?
        successful,
    TResult Function(Object error, StackTrace stackTrace, String pendingId)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace, pendingId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRecommendedRestaurantsStart value) start,
    required TResult Function(GetRecommendedRestaurantsSuccessful value)
        successful,
    required TResult Function(GetRecommendedRestaurantsError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRecommendedRestaurantsStart value)? start,
    TResult Function(GetRecommendedRestaurantsSuccessful value)? successful,
    TResult Function(GetRecommendedRestaurantsError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRecommendedRestaurantsStart value)? start,
    TResult Function(GetRecommendedRestaurantsSuccessful value)? successful,
    TResult Function(GetRecommendedRestaurantsError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetRecommendedRestaurantsError
    implements GetRecommendedRestaurants, ActionDone, ErrorAction {
  const factory GetRecommendedRestaurantsError(
          Object error, StackTrace stackTrace, [String pendingId]) =
      _$GetRecommendedRestaurantsError;

  Object get error;
  StackTrace get stackTrace;
  @override
  String get pendingId;
  @override
  @JsonKey(ignore: true)
  $GetRecommendedRestaurantsErrorCopyWith<GetRecommendedRestaurantsError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListenForRestaurantReviewTearOff {
  const _$ListenForRestaurantReviewTearOff();

  ListenForRestaurantReviewStart start() {
    return const ListenForRestaurantReviewStart();
  }

  ListenForRestaurantReviewDone done() {
    return const ListenForRestaurantReviewDone();
  }

  OnRestaurantReviewEvent event(List<Review> reviews) {
    return OnRestaurantReviewEvent(
      reviews,
    );
  }

  _ListenForRestaurantReviewError error(Object error, StackTrace stackTrace) {
    return _ListenForRestaurantReviewError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $ListenForRestaurantReview = _$ListenForRestaurantReviewTearOff();

/// @nodoc
mixin _$ListenForRestaurantReview {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForRestaurantReviewStart value) start,
    required TResult Function(ListenForRestaurantReviewDone value) done,
    required TResult Function(OnRestaurantReviewEvent value) event,
    required TResult Function(_ListenForRestaurantReviewError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenForRestaurantReviewCopyWith<$Res> {
  factory $ListenForRestaurantReviewCopyWith(ListenForRestaurantReview value,
          $Res Function(ListenForRestaurantReview) then) =
      _$ListenForRestaurantReviewCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForRestaurantReviewCopyWithImpl<$Res>
    implements $ListenForRestaurantReviewCopyWith<$Res> {
  _$ListenForRestaurantReviewCopyWithImpl(this._value, this._then);

  final ListenForRestaurantReview _value;
  // ignore: unused_field
  final $Res Function(ListenForRestaurantReview) _then;
}

/// @nodoc
abstract class $ListenForRestaurantReviewStartCopyWith<$Res> {
  factory $ListenForRestaurantReviewStartCopyWith(
          ListenForRestaurantReviewStart value,
          $Res Function(ListenForRestaurantReviewStart) then) =
      _$ListenForRestaurantReviewStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForRestaurantReviewStartCopyWithImpl<$Res>
    extends _$ListenForRestaurantReviewCopyWithImpl<$Res>
    implements $ListenForRestaurantReviewStartCopyWith<$Res> {
  _$ListenForRestaurantReviewStartCopyWithImpl(
      ListenForRestaurantReviewStart _value,
      $Res Function(ListenForRestaurantReviewStart) _then)
      : super(_value, (v) => _then(v as ListenForRestaurantReviewStart));

  @override
  ListenForRestaurantReviewStart get _value =>
      super._value as ListenForRestaurantReviewStart;
}

/// @nodoc

class _$ListenForRestaurantReviewStart
    implements ListenForRestaurantReviewStart {
  const _$ListenForRestaurantReviewStart();

  @override
  String toString() {
    return 'ListenForRestaurantReview.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListenForRestaurantReviewStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForRestaurantReviewStart value) start,
    required TResult Function(ListenForRestaurantReviewDone value) done,
    required TResult Function(OnRestaurantReviewEvent value) event,
    required TResult Function(_ListenForRestaurantReviewError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class ListenForRestaurantReviewStart
    implements ListenForRestaurantReview {
  const factory ListenForRestaurantReviewStart() =
      _$ListenForRestaurantReviewStart;
}

/// @nodoc
abstract class $ListenForRestaurantReviewDoneCopyWith<$Res> {
  factory $ListenForRestaurantReviewDoneCopyWith(
          ListenForRestaurantReviewDone value,
          $Res Function(ListenForRestaurantReviewDone) then) =
      _$ListenForRestaurantReviewDoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForRestaurantReviewDoneCopyWithImpl<$Res>
    extends _$ListenForRestaurantReviewCopyWithImpl<$Res>
    implements $ListenForRestaurantReviewDoneCopyWith<$Res> {
  _$ListenForRestaurantReviewDoneCopyWithImpl(
      ListenForRestaurantReviewDone _value,
      $Res Function(ListenForRestaurantReviewDone) _then)
      : super(_value, (v) => _then(v as ListenForRestaurantReviewDone));

  @override
  ListenForRestaurantReviewDone get _value =>
      super._value as ListenForRestaurantReviewDone;
}

/// @nodoc

class _$ListenForRestaurantReviewDone implements ListenForRestaurantReviewDone {
  const _$ListenForRestaurantReviewDone();

  @override
  String toString() {
    return 'ListenForRestaurantReview.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListenForRestaurantReviewDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForRestaurantReviewStart value) start,
    required TResult Function(ListenForRestaurantReviewDone value) done,
    required TResult Function(OnRestaurantReviewEvent value) event,
    required TResult Function(_ListenForRestaurantReviewError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ListenForRestaurantReviewDone
    implements ListenForRestaurantReview {
  const factory ListenForRestaurantReviewDone() =
      _$ListenForRestaurantReviewDone;
}

/// @nodoc
abstract class $OnRestaurantReviewEventCopyWith<$Res> {
  factory $OnRestaurantReviewEventCopyWith(OnRestaurantReviewEvent value,
          $Res Function(OnRestaurantReviewEvent) then) =
      _$OnRestaurantReviewEventCopyWithImpl<$Res>;
  $Res call({List<Review> reviews});
}

/// @nodoc
class _$OnRestaurantReviewEventCopyWithImpl<$Res>
    extends _$ListenForRestaurantReviewCopyWithImpl<$Res>
    implements $OnRestaurantReviewEventCopyWith<$Res> {
  _$OnRestaurantReviewEventCopyWithImpl(OnRestaurantReviewEvent _value,
      $Res Function(OnRestaurantReviewEvent) _then)
      : super(_value, (v) => _then(v as OnRestaurantReviewEvent));

  @override
  OnRestaurantReviewEvent get _value => super._value as OnRestaurantReviewEvent;

  @override
  $Res call({
    Object? reviews = freezed,
  }) {
    return _then(OnRestaurantReviewEvent(
      reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc

class _$OnRestaurantReviewEvent implements OnRestaurantReviewEvent {
  const _$OnRestaurantReviewEvent(this.reviews);

  @override
  final List<Review> reviews;

  @override
  String toString() {
    return 'ListenForRestaurantReview.event(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnRestaurantReviewEvent &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  $OnRestaurantReviewEventCopyWith<OnRestaurantReviewEvent> get copyWith =>
      _$OnRestaurantReviewEventCopyWithImpl<OnRestaurantReviewEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return event(reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return event?.call(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForRestaurantReviewStart value) start,
    required TResult Function(ListenForRestaurantReviewDone value) done,
    required TResult Function(OnRestaurantReviewEvent value) event,
    required TResult Function(_ListenForRestaurantReviewError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class OnRestaurantReviewEvent implements ListenForRestaurantReview {
  const factory OnRestaurantReviewEvent(List<Review> reviews) =
      _$OnRestaurantReviewEvent;

  List<Review> get reviews;
  @JsonKey(ignore: true)
  $OnRestaurantReviewEventCopyWith<OnRestaurantReviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ListenForRestaurantReviewErrorCopyWith<$Res> {
  factory _$ListenForRestaurantReviewErrorCopyWith(
          _ListenForRestaurantReviewError value,
          $Res Function(_ListenForRestaurantReviewError) then) =
      __$ListenForRestaurantReviewErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$ListenForRestaurantReviewErrorCopyWithImpl<$Res>
    extends _$ListenForRestaurantReviewCopyWithImpl<$Res>
    implements _$ListenForRestaurantReviewErrorCopyWith<$Res> {
  __$ListenForRestaurantReviewErrorCopyWithImpl(
      _ListenForRestaurantReviewError _value,
      $Res Function(_ListenForRestaurantReviewError) _then)
      : super(_value, (v) => _then(v as _ListenForRestaurantReviewError));

  @override
  _ListenForRestaurantReviewError get _value =>
      super._value as _ListenForRestaurantReviewError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_ListenForRestaurantReviewError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$_ListenForRestaurantReviewError
    implements _ListenForRestaurantReviewError {
  const _$_ListenForRestaurantReviewError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ListenForRestaurantReview.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListenForRestaurantReviewError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$ListenForRestaurantReviewErrorCopyWith<_ListenForRestaurantReviewError>
      get copyWith => __$ListenForRestaurantReviewErrorCopyWithImpl<
          _ListenForRestaurantReviewError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForRestaurantReviewStart value) start,
    required TResult Function(ListenForRestaurantReviewDone value) done,
    required TResult Function(OnRestaurantReviewEvent value) event,
    required TResult Function(_ListenForRestaurantReviewError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForRestaurantReviewStart value)? start,
    TResult Function(ListenForRestaurantReviewDone value)? done,
    TResult Function(OnRestaurantReviewEvent value)? event,
    TResult Function(_ListenForRestaurantReviewError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListenForRestaurantReviewError
    implements ListenForRestaurantReview, ErrorAction {
  const factory _ListenForRestaurantReviewError(
      Object error, StackTrace stackTrace) = _$_ListenForRestaurantReviewError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$ListenForRestaurantReviewErrorCopyWith<_ListenForRestaurantReviewError>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ListenForUserReviewTearOff {
  const _$ListenForUserReviewTearOff();

  ListenForUserReviewStart start() {
    return const ListenForUserReviewStart();
  }

  ListenForUserReviewDone done() {
    return const ListenForUserReviewDone();
  }

  OnUserReviewEvent event(List<Review> reviews) {
    return OnUserReviewEvent(
      reviews,
    );
  }

  _ListenForUserReviewError error(Object error, StackTrace stackTrace) {
    return _ListenForUserReviewError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $ListenForUserReview = _$ListenForUserReviewTearOff();

/// @nodoc
mixin _$ListenForUserReview {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForUserReviewStart value) start,
    required TResult Function(ListenForUserReviewDone value) done,
    required TResult Function(OnUserReviewEvent value) event,
    required TResult Function(_ListenForUserReviewError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenForUserReviewCopyWith<$Res> {
  factory $ListenForUserReviewCopyWith(
          ListenForUserReview value, $Res Function(ListenForUserReview) then) =
      _$ListenForUserReviewCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForUserReviewCopyWithImpl<$Res>
    implements $ListenForUserReviewCopyWith<$Res> {
  _$ListenForUserReviewCopyWithImpl(this._value, this._then);

  final ListenForUserReview _value;
  // ignore: unused_field
  final $Res Function(ListenForUserReview) _then;
}

/// @nodoc
abstract class $ListenForUserReviewStartCopyWith<$Res> {
  factory $ListenForUserReviewStartCopyWith(ListenForUserReviewStart value,
          $Res Function(ListenForUserReviewStart) then) =
      _$ListenForUserReviewStartCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForUserReviewStartCopyWithImpl<$Res>
    extends _$ListenForUserReviewCopyWithImpl<$Res>
    implements $ListenForUserReviewStartCopyWith<$Res> {
  _$ListenForUserReviewStartCopyWithImpl(ListenForUserReviewStart _value,
      $Res Function(ListenForUserReviewStart) _then)
      : super(_value, (v) => _then(v as ListenForUserReviewStart));

  @override
  ListenForUserReviewStart get _value =>
      super._value as ListenForUserReviewStart;
}

/// @nodoc

class _$ListenForUserReviewStart implements ListenForUserReviewStart {
  const _$ListenForUserReviewStart();

  @override
  String toString() {
    return 'ListenForUserReview.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListenForUserReviewStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForUserReviewStart value) start,
    required TResult Function(ListenForUserReviewDone value) done,
    required TResult Function(OnUserReviewEvent value) event,
    required TResult Function(_ListenForUserReviewError value) error,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class ListenForUserReviewStart implements ListenForUserReview {
  const factory ListenForUserReviewStart() = _$ListenForUserReviewStart;
}

/// @nodoc
abstract class $ListenForUserReviewDoneCopyWith<$Res> {
  factory $ListenForUserReviewDoneCopyWith(ListenForUserReviewDone value,
          $Res Function(ListenForUserReviewDone) then) =
      _$ListenForUserReviewDoneCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListenForUserReviewDoneCopyWithImpl<$Res>
    extends _$ListenForUserReviewCopyWithImpl<$Res>
    implements $ListenForUserReviewDoneCopyWith<$Res> {
  _$ListenForUserReviewDoneCopyWithImpl(ListenForUserReviewDone _value,
      $Res Function(ListenForUserReviewDone) _then)
      : super(_value, (v) => _then(v as ListenForUserReviewDone));

  @override
  ListenForUserReviewDone get _value => super._value as ListenForUserReviewDone;
}

/// @nodoc

class _$ListenForUserReviewDone implements ListenForUserReviewDone {
  const _$ListenForUserReviewDone();

  @override
  String toString() {
    return 'ListenForUserReview.done()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ListenForUserReviewDone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return done();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return done?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForUserReviewStart value) start,
    required TResult Function(ListenForUserReviewDone value) done,
    required TResult Function(OnUserReviewEvent value) event,
    required TResult Function(_ListenForUserReviewError value) error,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class ListenForUserReviewDone implements ListenForUserReview {
  const factory ListenForUserReviewDone() = _$ListenForUserReviewDone;
}

/// @nodoc
abstract class $OnUserReviewEventCopyWith<$Res> {
  factory $OnUserReviewEventCopyWith(
          OnUserReviewEvent value, $Res Function(OnUserReviewEvent) then) =
      _$OnUserReviewEventCopyWithImpl<$Res>;
  $Res call({List<Review> reviews});
}

/// @nodoc
class _$OnUserReviewEventCopyWithImpl<$Res>
    extends _$ListenForUserReviewCopyWithImpl<$Res>
    implements $OnUserReviewEventCopyWith<$Res> {
  _$OnUserReviewEventCopyWithImpl(
      OnUserReviewEvent _value, $Res Function(OnUserReviewEvent) _then)
      : super(_value, (v) => _then(v as OnUserReviewEvent));

  @override
  OnUserReviewEvent get _value => super._value as OnUserReviewEvent;

  @override
  $Res call({
    Object? reviews = freezed,
  }) {
    return _then(OnUserReviewEvent(
      reviews == freezed
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<Review>,
    ));
  }
}

/// @nodoc

class _$OnUserReviewEvent implements OnUserReviewEvent {
  const _$OnUserReviewEvent(this.reviews);

  @override
  final List<Review> reviews;

  @override
  String toString() {
    return 'ListenForUserReview.event(reviews: $reviews)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnUserReviewEvent &&
            const DeepCollectionEquality().equals(other.reviews, reviews));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reviews));

  @JsonKey(ignore: true)
  @override
  $OnUserReviewEventCopyWith<OnUserReviewEvent> get copyWith =>
      _$OnUserReviewEventCopyWithImpl<OnUserReviewEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return event(reviews);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return event?.call(reviews);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(reviews);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForUserReviewStart value) start,
    required TResult Function(ListenForUserReviewDone value) done,
    required TResult Function(OnUserReviewEvent value) event,
    required TResult Function(_ListenForUserReviewError value) error,
  }) {
    return event(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
  }) {
    return event?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
    required TResult orElse(),
  }) {
    if (event != null) {
      return event(this);
    }
    return orElse();
  }
}

abstract class OnUserReviewEvent implements ListenForUserReview {
  const factory OnUserReviewEvent(List<Review> reviews) = _$OnUserReviewEvent;

  List<Review> get reviews;
  @JsonKey(ignore: true)
  $OnUserReviewEventCopyWith<OnUserReviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ListenForUserReviewErrorCopyWith<$Res> {
  factory _$ListenForUserReviewErrorCopyWith(_ListenForUserReviewError value,
          $Res Function(_ListenForUserReviewError) then) =
      __$ListenForUserReviewErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$ListenForUserReviewErrorCopyWithImpl<$Res>
    extends _$ListenForUserReviewCopyWithImpl<$Res>
    implements _$ListenForUserReviewErrorCopyWith<$Res> {
  __$ListenForUserReviewErrorCopyWithImpl(_ListenForUserReviewError _value,
      $Res Function(_ListenForUserReviewError) _then)
      : super(_value, (v) => _then(v as _ListenForUserReviewError));

  @override
  _ListenForUserReviewError get _value =>
      super._value as _ListenForUserReviewError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(_ListenForUserReviewError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$_ListenForUserReviewError implements _ListenForUserReviewError {
  const _$_ListenForUserReviewError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'ListenForUserReview.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListenForUserReviewError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  _$ListenForUserReviewErrorCopyWith<_ListenForUserReviewError> get copyWith =>
      __$ListenForUserReviewErrorCopyWithImpl<_ListenForUserReviewError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function() done,
    required TResult Function(List<Review> reviews) event,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function()? done,
    TResult Function(List<Review> reviews)? event,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ListenForUserReviewStart value) start,
    required TResult Function(ListenForUserReviewDone value) done,
    required TResult Function(OnUserReviewEvent value) event,
    required TResult Function(_ListenForUserReviewError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ListenForUserReviewStart value)? start,
    TResult Function(ListenForUserReviewDone value)? done,
    TResult Function(OnUserReviewEvent value)? event,
    TResult Function(_ListenForUserReviewError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ListenForUserReviewError
    implements ListenForUserReview, ErrorAction {
  const factory _ListenForUserReviewError(Object error, StackTrace stackTrace) =
      _$_ListenForUserReviewError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  _$ListenForUserReviewErrorCopyWith<_ListenForUserReviewError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$RemoveFromFavoriteTearOff {
  const _$RemoveFromFavoriteTearOff();

  RemoveFromFavorite$ call(String restaurantId) {
    return RemoveFromFavorite$(
      restaurantId,
    );
  }

  RemoveFromFavoriteSuccessful successful(String restaurantId) {
    return RemoveFromFavoriteSuccessful(
      restaurantId,
    );
  }

  RemoveFromFavoriteError error(Object error, StackTrace stackTrace) {
    return RemoveFromFavoriteError(
      error,
      stackTrace,
    );
  }
}

/// @nodoc
const $RemoveFromFavorite = _$RemoveFromFavoriteTearOff();

/// @nodoc
mixin _$RemoveFromFavorite {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String restaurantId) $default, {
    required TResult Function(String restaurantId) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String restaurantId)? $default, {
    TResult Function(String restaurantId)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String restaurantId)? $default, {
    TResult Function(String restaurantId)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value) $default, {
    required TResult Function(RemoveFromFavoriteSuccessful value) successful,
    required TResult Function(RemoveFromFavoriteError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value)? $default, {
    TResult Function(RemoveFromFavoriteSuccessful value)? successful,
    TResult Function(RemoveFromFavoriteError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value)? $default, {
    TResult Function(RemoveFromFavoriteSuccessful value)? successful,
    TResult Function(RemoveFromFavoriteError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFromFavoriteCopyWith<$Res> {
  factory $RemoveFromFavoriteCopyWith(
          RemoveFromFavorite value, $Res Function(RemoveFromFavorite) then) =
      _$RemoveFromFavoriteCopyWithImpl<$Res>;
}

/// @nodoc
class _$RemoveFromFavoriteCopyWithImpl<$Res>
    implements $RemoveFromFavoriteCopyWith<$Res> {
  _$RemoveFromFavoriteCopyWithImpl(this._value, this._then);

  final RemoveFromFavorite _value;
  // ignore: unused_field
  final $Res Function(RemoveFromFavorite) _then;
}

/// @nodoc
abstract class $RemoveFromFavorite$CopyWith<$Res> {
  factory $RemoveFromFavorite$CopyWith(
          RemoveFromFavorite$ value, $Res Function(RemoveFromFavorite$) then) =
      _$RemoveFromFavorite$CopyWithImpl<$Res>;
  $Res call({String restaurantId});
}

/// @nodoc
class _$RemoveFromFavorite$CopyWithImpl<$Res>
    extends _$RemoveFromFavoriteCopyWithImpl<$Res>
    implements $RemoveFromFavorite$CopyWith<$Res> {
  _$RemoveFromFavorite$CopyWithImpl(
      RemoveFromFavorite$ _value, $Res Function(RemoveFromFavorite$) _then)
      : super(_value, (v) => _then(v as RemoveFromFavorite$));

  @override
  RemoveFromFavorite$ get _value => super._value as RemoveFromFavorite$;

  @override
  $Res call({
    Object? restaurantId = freezed,
  }) {
    return _then(RemoveFromFavorite$(
      restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromFavorite$ implements RemoveFromFavorite$ {
  const _$RemoveFromFavorite$(this.restaurantId);

  @override
  final String restaurantId;

  @override
  String toString() {
    return 'RemoveFromFavorite(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveFromFavorite$ &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(restaurantId));

  @JsonKey(ignore: true)
  @override
  $RemoveFromFavorite$CopyWith<RemoveFromFavorite$> get copyWith =>
      _$RemoveFromFavorite$CopyWithImpl<RemoveFromFavorite$>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String restaurantId) $default, {
    required TResult Function(String restaurantId) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String restaurantId)? $default, {
    TResult Function(String restaurantId)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String restaurantId)? $default, {
    TResult Function(String restaurantId)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value) $default, {
    required TResult Function(RemoveFromFavoriteSuccessful value) successful,
    required TResult Function(RemoveFromFavoriteError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value)? $default, {
    TResult Function(RemoveFromFavoriteSuccessful value)? successful,
    TResult Function(RemoveFromFavoriteError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value)? $default, {
    TResult Function(RemoveFromFavoriteSuccessful value)? successful,
    TResult Function(RemoveFromFavoriteError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RemoveFromFavorite$ implements RemoveFromFavorite {
  const factory RemoveFromFavorite$(String restaurantId) =
      _$RemoveFromFavorite$;

  String get restaurantId;
  @JsonKey(ignore: true)
  $RemoveFromFavorite$CopyWith<RemoveFromFavorite$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFromFavoriteSuccessfulCopyWith<$Res> {
  factory $RemoveFromFavoriteSuccessfulCopyWith(
          RemoveFromFavoriteSuccessful value,
          $Res Function(RemoveFromFavoriteSuccessful) then) =
      _$RemoveFromFavoriteSuccessfulCopyWithImpl<$Res>;
  $Res call({String restaurantId});
}

/// @nodoc
class _$RemoveFromFavoriteSuccessfulCopyWithImpl<$Res>
    extends _$RemoveFromFavoriteCopyWithImpl<$Res>
    implements $RemoveFromFavoriteSuccessfulCopyWith<$Res> {
  _$RemoveFromFavoriteSuccessfulCopyWithImpl(
      RemoveFromFavoriteSuccessful _value,
      $Res Function(RemoveFromFavoriteSuccessful) _then)
      : super(_value, (v) => _then(v as RemoveFromFavoriteSuccessful));

  @override
  RemoveFromFavoriteSuccessful get _value =>
      super._value as RemoveFromFavoriteSuccessful;

  @override
  $Res call({
    Object? restaurantId = freezed,
  }) {
    return _then(RemoveFromFavoriteSuccessful(
      restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveFromFavoriteSuccessful implements RemoveFromFavoriteSuccessful {
  const _$RemoveFromFavoriteSuccessful(this.restaurantId);

  @override
  final String restaurantId;

  @override
  String toString() {
    return 'RemoveFromFavorite.successful(restaurantId: $restaurantId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveFromFavoriteSuccessful &&
            const DeepCollectionEquality()
                .equals(other.restaurantId, restaurantId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(restaurantId));

  @JsonKey(ignore: true)
  @override
  $RemoveFromFavoriteSuccessfulCopyWith<RemoveFromFavoriteSuccessful>
      get copyWith => _$RemoveFromFavoriteSuccessfulCopyWithImpl<
          RemoveFromFavoriteSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String restaurantId) $default, {
    required TResult Function(String restaurantId) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String restaurantId)? $default, {
    TResult Function(String restaurantId)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(restaurantId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String restaurantId)? $default, {
    TResult Function(String restaurantId)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(restaurantId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value) $default, {
    required TResult Function(RemoveFromFavoriteSuccessful value) successful,
    required TResult Function(RemoveFromFavoriteError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value)? $default, {
    TResult Function(RemoveFromFavoriteSuccessful value)? successful,
    TResult Function(RemoveFromFavoriteError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value)? $default, {
    TResult Function(RemoveFromFavoriteSuccessful value)? successful,
    TResult Function(RemoveFromFavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class RemoveFromFavoriteSuccessful implements RemoveFromFavorite {
  const factory RemoveFromFavoriteSuccessful(String restaurantId) =
      _$RemoveFromFavoriteSuccessful;

  String get restaurantId;
  @JsonKey(ignore: true)
  $RemoveFromFavoriteSuccessfulCopyWith<RemoveFromFavoriteSuccessful>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RemoveFromFavoriteErrorCopyWith<$Res> {
  factory $RemoveFromFavoriteErrorCopyWith(RemoveFromFavoriteError value,
          $Res Function(RemoveFromFavoriteError) then) =
      _$RemoveFromFavoriteErrorCopyWithImpl<$Res>;
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class _$RemoveFromFavoriteErrorCopyWithImpl<$Res>
    extends _$RemoveFromFavoriteCopyWithImpl<$Res>
    implements $RemoveFromFavoriteErrorCopyWith<$Res> {
  _$RemoveFromFavoriteErrorCopyWithImpl(RemoveFromFavoriteError _value,
      $Res Function(RemoveFromFavoriteError) _then)
      : super(_value, (v) => _then(v as RemoveFromFavoriteError));

  @override
  RemoveFromFavoriteError get _value => super._value as RemoveFromFavoriteError;

  @override
  $Res call({
    Object? error = freezed,
    Object? stackTrace = freezed,
  }) {
    return _then(RemoveFromFavoriteError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Object,
      stackTrace == freezed
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

@Implements<ErrorAction>()
class _$RemoveFromFavoriteError implements RemoveFromFavoriteError {
  const _$RemoveFromFavoriteError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'RemoveFromFavorite.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveFromFavoriteError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality()
                .equals(other.stackTrace, stackTrace));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(stackTrace));

  @JsonKey(ignore: true)
  @override
  $RemoveFromFavoriteErrorCopyWith<RemoveFromFavoriteError> get copyWith =>
      _$RemoveFromFavoriteErrorCopyWithImpl<RemoveFromFavoriteError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String restaurantId) $default, {
    required TResult Function(String restaurantId) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String restaurantId)? $default, {
    TResult Function(String restaurantId)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String restaurantId)? $default, {
    TResult Function(String restaurantId)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value) $default, {
    required TResult Function(RemoveFromFavoriteSuccessful value) successful,
    required TResult Function(RemoveFromFavoriteError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value)? $default, {
    TResult Function(RemoveFromFavoriteSuccessful value)? successful,
    TResult Function(RemoveFromFavoriteError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RemoveFromFavorite$ value)? $default, {
    TResult Function(RemoveFromFavoriteSuccessful value)? successful,
    TResult Function(RemoveFromFavoriteError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class RemoveFromFavoriteError
    implements RemoveFromFavorite, ErrorAction {
  const factory RemoveFromFavoriteError(Object error, StackTrace stackTrace) =
      _$RemoveFromFavoriteError;

  Object get error;
  StackTrace get stackTrace;
  @JsonKey(ignore: true)
  $RemoveFromFavoriteErrorCopyWith<RemoveFromFavoriteError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetSelectedRestaurantTearOff {
  const _$SetSelectedRestaurantTearOff();

  SetSelectedRestaurant$ call(String id) {
    return SetSelectedRestaurant$(
      id,
    );
  }
}

/// @nodoc
const $SetSelectedRestaurant = _$SetSelectedRestaurantTearOff();

/// @nodoc
mixin _$SetSelectedRestaurant {
  String get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedRestaurantCopyWith<SetSelectedRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedRestaurantCopyWith<$Res> {
  factory $SetSelectedRestaurantCopyWith(SetSelectedRestaurant value,
          $Res Function(SetSelectedRestaurant) then) =
      _$SetSelectedRestaurantCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$SetSelectedRestaurantCopyWithImpl<$Res>
    implements $SetSelectedRestaurantCopyWith<$Res> {
  _$SetSelectedRestaurantCopyWithImpl(this._value, this._then);

  final SetSelectedRestaurant _value;
  // ignore: unused_field
  final $Res Function(SetSelectedRestaurant) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedRestaurant$CopyWith<$Res>
    implements $SetSelectedRestaurantCopyWith<$Res> {
  factory $SetSelectedRestaurant$CopyWith(SetSelectedRestaurant$ value,
          $Res Function(SetSelectedRestaurant$) then) =
      _$SetSelectedRestaurant$CopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class _$SetSelectedRestaurant$CopyWithImpl<$Res>
    extends _$SetSelectedRestaurantCopyWithImpl<$Res>
    implements $SetSelectedRestaurant$CopyWith<$Res> {
  _$SetSelectedRestaurant$CopyWithImpl(SetSelectedRestaurant$ _value,
      $Res Function(SetSelectedRestaurant$) _then)
      : super(_value, (v) => _then(v as SetSelectedRestaurant$));

  @override
  SetSelectedRestaurant$ get _value => super._value as SetSelectedRestaurant$;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(SetSelectedRestaurant$(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetSelectedRestaurant$ implements SetSelectedRestaurant$ {
  const _$SetSelectedRestaurant$(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'SetSelectedRestaurant(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetSelectedRestaurant$ &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  $SetSelectedRestaurant$CopyWith<SetSelectedRestaurant$> get copyWith =>
      _$SetSelectedRestaurant$CopyWithImpl<SetSelectedRestaurant$>(
          this, _$identity);
}

abstract class SetSelectedRestaurant$ implements SetSelectedRestaurant {
  const factory SetSelectedRestaurant$(String id) = _$SetSelectedRestaurant$;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  $SetSelectedRestaurant$CopyWith<SetSelectedRestaurant$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SetSelectedReviewTearOff {
  const _$SetSelectedReviewTearOff();

  SetSelectedReview$ call(String reviewUid) {
    return SetSelectedReview$(
      reviewUid,
    );
  }
}

/// @nodoc
const $SetSelectedReview = _$SetSelectedReviewTearOff();

/// @nodoc
mixin _$SetSelectedReview {
  String get reviewUid => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedReviewCopyWith<SetSelectedReview> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedReviewCopyWith<$Res> {
  factory $SetSelectedReviewCopyWith(
          SetSelectedReview value, $Res Function(SetSelectedReview) then) =
      _$SetSelectedReviewCopyWithImpl<$Res>;
  $Res call({String reviewUid});
}

/// @nodoc
class _$SetSelectedReviewCopyWithImpl<$Res>
    implements $SetSelectedReviewCopyWith<$Res> {
  _$SetSelectedReviewCopyWithImpl(this._value, this._then);

  final SetSelectedReview _value;
  // ignore: unused_field
  final $Res Function(SetSelectedReview) _then;

  @override
  $Res call({
    Object? reviewUid = freezed,
  }) {
    return _then(_value.copyWith(
      reviewUid: reviewUid == freezed
          ? _value.reviewUid
          : reviewUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $SetSelectedReview$CopyWith<$Res>
    implements $SetSelectedReviewCopyWith<$Res> {
  factory $SetSelectedReview$CopyWith(
          SetSelectedReview$ value, $Res Function(SetSelectedReview$) then) =
      _$SetSelectedReview$CopyWithImpl<$Res>;
  @override
  $Res call({String reviewUid});
}

/// @nodoc
class _$SetSelectedReview$CopyWithImpl<$Res>
    extends _$SetSelectedReviewCopyWithImpl<$Res>
    implements $SetSelectedReview$CopyWith<$Res> {
  _$SetSelectedReview$CopyWithImpl(
      SetSelectedReview$ _value, $Res Function(SetSelectedReview$) _then)
      : super(_value, (v) => _then(v as SetSelectedReview$));

  @override
  SetSelectedReview$ get _value => super._value as SetSelectedReview$;

  @override
  $Res call({
    Object? reviewUid = freezed,
  }) {
    return _then(SetSelectedReview$(
      reviewUid == freezed
          ? _value.reviewUid
          : reviewUid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetSelectedReview$ implements SetSelectedReview$ {
  const _$SetSelectedReview$(this.reviewUid);

  @override
  final String reviewUid;

  @override
  String toString() {
    return 'SetSelectedReview(reviewUid: $reviewUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SetSelectedReview$ &&
            const DeepCollectionEquality().equals(other.reviewUid, reviewUid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(reviewUid));

  @JsonKey(ignore: true)
  @override
  $SetSelectedReview$CopyWith<SetSelectedReview$> get copyWith =>
      _$SetSelectedReview$CopyWithImpl<SetSelectedReview$>(this, _$identity);
}

abstract class SetSelectedReview$ implements SetSelectedReview {
  const factory SetSelectedReview$(String reviewUid) = _$SetSelectedReview$;

  @override
  String get reviewUid;
  @override
  @JsonKey(ignore: true)
  $SetSelectedReview$CopyWith<SetSelectedReview$> get copyWith =>
      throw _privateConstructorUsedError;
}
