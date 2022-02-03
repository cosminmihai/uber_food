// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of models;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _AppState$ call(
      {AuthState auth = const AuthState(),
      RestaurantsState restaurants = const RestaurantsState(),
      Set<String> pendingActions = const <String>{}}) {
    return _AppState$(
      auth: auth,
      restaurants: restaurants,
      pendingActions: pendingActions,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  AuthState get auth => throw _privateConstructorUsedError;
  RestaurantsState get restaurants => throw _privateConstructorUsedError;
  Set<String> get pendingActions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call(
      {AuthState auth,
      RestaurantsState restaurants,
      Set<String> pendingActions});

  $AuthStateCopyWith<$Res> get auth;
  $RestaurantsStateCopyWith<$Res> get restaurants;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? auth = freezed,
    Object? restaurants = freezed,
    Object? pendingActions = freezed,
  }) {
    return _then(_value.copyWith(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      restaurants: restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as RestaurantsState,
      pendingActions: pendingActions == freezed
          ? _value.pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }

  @override
  $AuthStateCopyWith<$Res> get auth {
    return $AuthStateCopyWith<$Res>(_value.auth, (value) {
      return _then(_value.copyWith(auth: value));
    });
  }

  @override
  $RestaurantsStateCopyWith<$Res> get restaurants {
    return $RestaurantsStateCopyWith<$Res>(_value.restaurants, (value) {
      return _then(_value.copyWith(restaurants: value));
    });
  }
}

/// @nodoc
abstract class _$AppState$CopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$AppState$CopyWith(
          _AppState$ value, $Res Function(_AppState$) then) =
      __$AppState$CopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthState auth,
      RestaurantsState restaurants,
      Set<String> pendingActions});

  @override
  $AuthStateCopyWith<$Res> get auth;
  @override
  $RestaurantsStateCopyWith<$Res> get restaurants;
}

/// @nodoc
class __$AppState$CopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$AppState$CopyWith<$Res> {
  __$AppState$CopyWithImpl(_AppState$ _value, $Res Function(_AppState$) _then)
      : super(_value, (v) => _then(v as _AppState$));

  @override
  _AppState$ get _value => super._value as _AppState$;

  @override
  $Res call({
    Object? auth = freezed,
    Object? restaurants = freezed,
    Object? pendingActions = freezed,
  }) {
    return _then(_AppState$(
      auth: auth == freezed
          ? _value.auth
          : auth // ignore: cast_nullable_to_non_nullable
              as AuthState,
      restaurants: restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as RestaurantsState,
      pendingActions: pendingActions == freezed
          ? _value.pendingActions
          : pendingActions // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$_AppState$ implements _AppState$ {
  const _$_AppState$(
      {this.auth = const AuthState(),
      this.restaurants = const RestaurantsState(),
      this.pendingActions = const <String>{}});

  @JsonKey()
  @override
  final AuthState auth;
  @JsonKey()
  @override
  final RestaurantsState restaurants;
  @JsonKey()
  @override
  final Set<String> pendingActions;

  @override
  String toString() {
    return 'AppState(auth: $auth, restaurants: $restaurants, pendingActions: $pendingActions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppState$ &&
            const DeepCollectionEquality().equals(other.auth, auth) &&
            const DeepCollectionEquality()
                .equals(other.restaurants, restaurants) &&
            const DeepCollectionEquality()
                .equals(other.pendingActions, pendingActions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(auth),
      const DeepCollectionEquality().hash(restaurants),
      const DeepCollectionEquality().hash(pendingActions));

  @JsonKey(ignore: true)
  @override
  _$AppState$CopyWith<_AppState$> get copyWith =>
      __$AppState$CopyWithImpl<_AppState$>(this, _$identity);
}

abstract class _AppState$ implements AppState {
  const factory _AppState$(
      {AuthState auth,
      RestaurantsState restaurants,
      Set<String> pendingActions}) = _$_AppState$;

  @override
  AuthState get auth;
  @override
  RestaurantsState get restaurants;
  @override
  Set<String> get pendingActions;
  @override
  @JsonKey(ignore: true)
  _$AppState$CopyWith<_AppState$> get copyWith =>
      throw _privateConstructorUsedError;
}
