// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AppState.serializer)
      ..add(AppUser.serializer)
      ..add(AuthState.serializer)
      ..add(FavoriteRestaurant.serializer)
      ..add(FavoriteRestaurantsState.serializer)
      ..add(Restaurant.serializer)
      ..add(RestaurantLocation.serializer)
      ..add(RestaurantReview.serializer)
      ..add(RestaurantsState.serializer)
      ..add(ReviewsState.serializer)
      ..add(UserRating.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(FavoriteRestaurant)]),
          () => new ListBuilder<FavoriteRestaurant>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Restaurant)]),
          () => new ListBuilder<Restaurant>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(Restaurant)]),
          () => new ListBuilder<Restaurant>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(String)]),
          () => new ListBuilder<String>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AppUser)]),
          () => new MapBuilder<String, AppUser>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(RestaurantReview)]),
          () => new MapBuilder<String, RestaurantReview>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(RestaurantReview)]),
          () => new MapBuilder<String, RestaurantReview>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(AppUser)]),
          () => new MapBuilder<String, AppUser>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
