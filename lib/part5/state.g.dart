// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$NewsScreenStateCWProxy {
  NewsScreenState newsListRequestState(
      RequestState<List<News>> newsListRequestState);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NewsScreenState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NewsScreenState(...).copyWith(id: 12, name: "My name")
  /// ````
  NewsScreenState call({
    RequestState<List<News>> newsListRequestState,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfNewsScreenState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfNewsScreenState.copyWith.fieldName(...)`
class _$NewsScreenStateCWProxyImpl implements _$NewsScreenStateCWProxy {
  const _$NewsScreenStateCWProxyImpl(this._value);

  final NewsScreenState _value;

  @override
  NewsScreenState newsListRequestState(
          RequestState<List<News>> newsListRequestState) =>
      this(newsListRequestState: newsListRequestState);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `NewsScreenState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// NewsScreenState(...).copyWith(id: 12, name: "My name")
  /// ````
  NewsScreenState call({
    Object? newsListRequestState = const $CopyWithPlaceholder(),
  }) {
    return NewsScreenState(
      newsListRequestState: newsListRequestState == const $CopyWithPlaceholder()
          ? _value.newsListRequestState
          // ignore: cast_nullable_to_non_nullable
          : newsListRequestState as RequestState<List<News>>,
    );
  }
}

extension $NewsScreenStateCopyWith on NewsScreenState {
  /// Returns a callable class that can be used as follows: `instanceOfNewsScreenState.copyWith(...)` or like so:`instanceOfNewsScreenState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$NewsScreenStateCWProxy get copyWith => _$NewsScreenStateCWProxyImpl(this);
}
