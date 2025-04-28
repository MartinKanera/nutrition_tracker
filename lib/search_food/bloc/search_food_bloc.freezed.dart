// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_food_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchFoodEvent {
  String get query => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryUpdated value) queryUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryUpdated value)? queryUpdated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryUpdated value)? queryUpdated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFoodEventCopyWith<SearchFoodEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFoodEventCopyWith<$Res> {
  factory $SearchFoodEventCopyWith(
          SearchFoodEvent value, $Res Function(SearchFoodEvent) then) =
      _$SearchFoodEventCopyWithImpl<$Res, SearchFoodEvent>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class _$SearchFoodEventCopyWithImpl<$Res, $Val extends SearchFoodEvent>
    implements $SearchFoodEventCopyWith<$Res> {
  _$SearchFoodEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QueryUpdatedImplCopyWith<$Res>
    implements $SearchFoodEventCopyWith<$Res> {
  factory _$$QueryUpdatedImplCopyWith(
          _$QueryUpdatedImpl value, $Res Function(_$QueryUpdatedImpl) then) =
      __$$QueryUpdatedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$QueryUpdatedImplCopyWithImpl<$Res>
    extends _$SearchFoodEventCopyWithImpl<$Res, _$QueryUpdatedImpl>
    implements _$$QueryUpdatedImplCopyWith<$Res> {
  __$$QueryUpdatedImplCopyWithImpl(
      _$QueryUpdatedImpl _value, $Res Function(_$QueryUpdatedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$QueryUpdatedImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$QueryUpdatedImpl implements _QueryUpdated {
  const _$QueryUpdatedImpl({required this.query});

  @override
  final String query;

  @override
  String toString() {
    return 'SearchFoodEvent.queryUpdated(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QueryUpdatedImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QueryUpdatedImplCopyWith<_$QueryUpdatedImpl> get copyWith =>
      __$$QueryUpdatedImplCopyWithImpl<_$QueryUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String query) queryUpdated,
  }) {
    return queryUpdated(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query)? queryUpdated,
  }) {
    return queryUpdated?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query)? queryUpdated,
    required TResult orElse(),
  }) {
    if (queryUpdated != null) {
      return queryUpdated(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QueryUpdated value) queryUpdated,
  }) {
    return queryUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_QueryUpdated value)? queryUpdated,
  }) {
    return queryUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QueryUpdated value)? queryUpdated,
    required TResult orElse(),
  }) {
    if (queryUpdated != null) {
      return queryUpdated(this);
    }
    return orElse();
  }
}

abstract class _QueryUpdated implements SearchFoodEvent {
  const factory _QueryUpdated({required final String query}) =
      _$QueryUpdatedImpl;

  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$QueryUpdatedImplCopyWith<_$QueryUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchFoodState {
  String get query => throw _privateConstructorUsedError;
  List<FoodSearchResult> get searchResults =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String query, List<FoodSearchResult> searchResults)
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<FoodSearchResult> searchResults)?
        success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<FoodSearchResult> searchResults)?
        success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchFoodStateCopyWith<SearchFoodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchFoodStateCopyWith<$Res> {
  factory $SearchFoodStateCopyWith(
          SearchFoodState value, $Res Function(SearchFoodState) then) =
      _$SearchFoodStateCopyWithImpl<$Res, SearchFoodState>;
  @useResult
  $Res call({String query, List<FoodSearchResult> searchResults});
}

/// @nodoc
class _$SearchFoodStateCopyWithImpl<$Res, $Val extends SearchFoodState>
    implements $SearchFoodStateCopyWith<$Res> {
  _$SearchFoodStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? searchResults = null,
  }) {
    return _then(_value.copyWith(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchResults: null == searchResults
          ? _value.searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<FoodSearchResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $SearchFoodStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String query, List<FoodSearchResult> searchResults});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$SearchFoodStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
    Object? searchResults = null,
  }) {
    return _then(_$SuccessImpl(
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
      searchResults: null == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<FoodSearchResult>,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(
      {this.query = '', final List<FoodSearchResult> searchResults = const []})
      : _searchResults = searchResults;

  @override
  @JsonKey()
  final String query;
  final List<FoodSearchResult> _searchResults;
  @override
  @JsonKey()
  List<FoodSearchResult> get searchResults {
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_searchResults);
  }

  @override
  String toString() {
    return 'SearchFoodState.success(query: $query, searchResults: $searchResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.query, query) || other.query == query) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, query, const DeepCollectionEquality().hash(_searchResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String query, List<FoodSearchResult> searchResults)
        success,
  }) {
    return success(query, searchResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String query, List<FoodSearchResult> searchResults)?
        success,
  }) {
    return success?.call(query, searchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String query, List<FoodSearchResult> searchResults)?
        success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(query, searchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements SearchFoodState {
  const factory _Success(
      {final String query,
      final List<FoodSearchResult> searchResults}) = _$SuccessImpl;

  @override
  String get query;
  @override
  List<FoodSearchResult> get searchResults;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
