// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodSearchResult {
  /// The name of the food item
  String get name => throw _privateConstructorUsedError;

  /// URL to the food item's image
  String get imageUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodSearchResultCopyWith<FoodSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodSearchResultCopyWith<$Res> {
  factory $FoodSearchResultCopyWith(
          FoodSearchResult value, $Res Function(FoodSearchResult) then) =
      _$FoodSearchResultCopyWithImpl<$Res, FoodSearchResult>;
  @useResult
  $Res call({String name, String imageUrl});
}

/// @nodoc
class _$FoodSearchResultCopyWithImpl<$Res, $Val extends FoodSearchResult>
    implements $FoodSearchResultCopyWith<$Res> {
  _$FoodSearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodSearchResultImplCopyWith<$Res>
    implements $FoodSearchResultCopyWith<$Res> {
  factory _$$FoodSearchResultImplCopyWith(_$FoodSearchResultImpl value,
          $Res Function(_$FoodSearchResultImpl) then) =
      __$$FoodSearchResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String imageUrl});
}

/// @nodoc
class __$$FoodSearchResultImplCopyWithImpl<$Res>
    extends _$FoodSearchResultCopyWithImpl<$Res, _$FoodSearchResultImpl>
    implements _$$FoodSearchResultImplCopyWith<$Res> {
  __$$FoodSearchResultImplCopyWithImpl(_$FoodSearchResultImpl _value,
      $Res Function(_$FoodSearchResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? imageUrl = null,
  }) {
    return _then(_$FoodSearchResultImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FoodSearchResultImpl implements _FoodSearchResult {
  const _$FoodSearchResultImpl({required this.name, required this.imageUrl});

  /// The name of the food item
  @override
  final String name;

  /// URL to the food item's image
  @override
  final String imageUrl;

  @override
  String toString() {
    return 'FoodSearchResult(name: $name, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodSearchResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, imageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodSearchResultImplCopyWith<_$FoodSearchResultImpl> get copyWith =>
      __$$FoodSearchResultImplCopyWithImpl<_$FoodSearchResultImpl>(
          this, _$identity);
}

abstract class _FoodSearchResult implements FoodSearchResult {
  const factory _FoodSearchResult(
      {required final String name,
      required final String imageUrl}) = _$FoodSearchResultImpl;

  @override

  /// The name of the food item
  String get name;
  @override

  /// URL to the food item's image
  String get imageUrl;
  @override
  @JsonKey(ignore: true)
  _$$FoodSearchResultImplCopyWith<_$FoodSearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
