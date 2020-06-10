// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_rating;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRating> _$userRatingSerializer = new _$UserRatingSerializer();

class _$UserRatingSerializer implements StructuredSerializer<UserRating> {
  @override
  final Iterable<Type> types = const [UserRating, _$UserRating];
  @override
  final String wireName = 'UserRating';

  @override
  Iterable<Object> serialize(Serializers serializers, UserRating object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'rating_text',
      serializers.serialize(object.ratingText,
          specifiedType: const FullType(String)),
      'rating_color',
      serializers.serialize(object.ratingColor,
          specifiedType: const FullType(int)),
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  UserRating deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRatingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'rating_text':
          result.ratingText = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating_color':
          result.ratingColor = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserRating extends UserRating {
  @override
  final String ratingText;
  @override
  final int ratingColor;
  @override
  final int votes;

  factory _$UserRating([void Function(UserRatingBuilder) updates]) =>
      (new UserRatingBuilder()..update(updates)).build();

  _$UserRating._({this.ratingText, this.ratingColor, this.votes}) : super._() {
    if (ratingText == null) {
      throw new BuiltValueNullFieldError('UserRating', 'ratingText');
    }
    if (ratingColor == null) {
      throw new BuiltValueNullFieldError('UserRating', 'ratingColor');
    }
    if (votes == null) {
      throw new BuiltValueNullFieldError('UserRating', 'votes');
    }
  }

  @override
  UserRating rebuild(void Function(UserRatingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRatingBuilder toBuilder() => new UserRatingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRating &&
        ratingText == other.ratingText &&
        ratingColor == other.ratingColor &&
        votes == other.votes;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, ratingText.hashCode), ratingColor.hashCode),
        votes.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserRating')
          ..add('ratingText', ratingText)
          ..add('ratingColor', ratingColor)
          ..add('votes', votes))
        .toString();
  }
}

class UserRatingBuilder implements Builder<UserRating, UserRatingBuilder> {
  _$UserRating _$v;

  String _ratingText;
  String get ratingText => _$this._ratingText;
  set ratingText(String ratingText) => _$this._ratingText = ratingText;

  int _ratingColor;
  int get ratingColor => _$this._ratingColor;
  set ratingColor(int ratingColor) => _$this._ratingColor = ratingColor;

  int _votes;
  int get votes => _$this._votes;
  set votes(int votes) => _$this._votes = votes;

  UserRatingBuilder();

  UserRatingBuilder get _$this {
    if (_$v != null) {
      _ratingText = _$v.ratingText;
      _ratingColor = _$v.ratingColor;
      _votes = _$v.votes;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserRating other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserRating;
  }

  @override
  void update(void Function(UserRatingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserRating build() {
    final _$result = _$v ??
        new _$UserRating._(
            ratingText: ratingText, ratingColor: ratingColor, votes: votes);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
