// GENERATED CODE - DO NOT MODIFY BY HAND

part of set_selected_review;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetSelectedReview extends SetSelectedReview {
  @override
  final String reviewUid;

  factory _$SetSelectedReview(
          [void Function(SetSelectedReviewBuilder) updates]) =>
      (new SetSelectedReviewBuilder()..update(updates)).build();

  _$SetSelectedReview._({this.reviewUid}) : super._() {
    if (reviewUid == null) {
      throw new BuiltValueNullFieldError('SetSelectedReview', 'reviewUid');
    }
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
  _$SetSelectedReview _$v;

  String _reviewUid;
  String get reviewUid => _$this._reviewUid;
  set reviewUid(String reviewUid) => _$this._reviewUid = reviewUid;

  SetSelectedReviewBuilder();

  SetSelectedReviewBuilder get _$this {
    if (_$v != null) {
      _reviewUid = _$v.reviewUid;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetSelectedReview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SetSelectedReview;
  }

  @override
  void update(void Function(SetSelectedReviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SetSelectedReview build() {
    final _$result = _$v ?? new _$SetSelectedReview._(reviewUid: reviewUid);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
