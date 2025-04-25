// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OverviewEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is OverviewEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OverviewEvent()';
  }
}

/// @nodoc
class $OverviewEventCopyWith<$Res> {
  $OverviewEventCopyWith(OverviewEvent _, $Res Function(OverviewEvent) __);
}

/// @nodoc

class _OverviewEvent implements OverviewEvent {
  const _OverviewEvent();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _OverviewEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'OverviewEvent.load()';
  }
}

/// @nodoc
mixin _$OverviewState {
  DateTime get date;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OverviewStateCopyWith<OverviewState> get copyWith =>
      _$OverviewStateCopyWithImpl<OverviewState>(
          this as OverviewState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OverviewState &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'OverviewState(date: $date)';
  }
}

/// @nodoc
abstract mixin class $OverviewStateCopyWith<$Res> {
  factory $OverviewStateCopyWith(
          OverviewState value, $Res Function(OverviewState) _then) =
      _$OverviewStateCopyWithImpl;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$OverviewStateCopyWithImpl<$Res>
    implements $OverviewStateCopyWith<$Res> {
  _$OverviewStateCopyWithImpl(this._self, this._then);

  final OverviewState _self;
  final $Res Function(OverviewState) _then;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _InitialState implements OverviewState {
  const _InitialState({required this.date});

  @override
  final DateTime date;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$InitialStateCopyWith<_InitialState> get copyWith =>
      __$InitialStateCopyWithImpl<_InitialState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitialState &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'OverviewState.initial(date: $date)';
  }
}

/// @nodoc
abstract mixin class _$InitialStateCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$InitialStateCopyWith(
          _InitialState value, $Res Function(_InitialState) _then) =
      __$InitialStateCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$InitialStateCopyWithImpl<$Res>
    implements _$InitialStateCopyWith<$Res> {
  __$InitialStateCopyWithImpl(this._self, this._then);

  final _InitialState _self;
  final $Res Function(_InitialState) _then;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
  }) {
    return _then(_InitialState(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _LoadingState implements OverviewState {
  const _LoadingState({required this.date});

  @override
  final DateTime date;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LoadingStateCopyWith<_LoadingState> get copyWith =>
      __$LoadingStateCopyWithImpl<_LoadingState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadingState &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @override
  String toString() {
    return 'OverviewState.loading(date: $date)';
  }
}

/// @nodoc
abstract mixin class _$LoadingStateCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(
          _LoadingState value, $Res Function(_LoadingState) _then) =
      __$LoadingStateCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$LoadingStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(this._self, this._then);

  final _LoadingState _self;
  final $Res Function(_LoadingState) _then;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
  }) {
    return _then(_LoadingState(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _SuccessState implements OverviewState {
  const _SuccessState(
      {required this.date, final List<FoodRecord> foodRecords = const []})
      : _foodRecords = foodRecords;

  @override
  final DateTime date;
  final List<FoodRecord> _foodRecords;
  @JsonKey()
  List<FoodRecord> get foodRecords {
    if (_foodRecords is EqualUnmodifiableListView) return _foodRecords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_foodRecords);
  }

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SuccessStateCopyWith<_SuccessState> get copyWith =>
      __$SuccessStateCopyWithImpl<_SuccessState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessState &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._foodRecords, _foodRecords));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, date, const DeepCollectionEquality().hash(_foodRecords));

  @override
  String toString() {
    return 'OverviewState.success(date: $date, foodRecords: $foodRecords)';
  }
}

/// @nodoc
abstract mixin class _$SuccessStateCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$SuccessStateCopyWith(
          _SuccessState value, $Res Function(_SuccessState) _then) =
      __$SuccessStateCopyWithImpl;
  @override
  @useResult
  $Res call({DateTime date, List<FoodRecord> foodRecords});
}

/// @nodoc
class __$SuccessStateCopyWithImpl<$Res>
    implements _$SuccessStateCopyWith<$Res> {
  __$SuccessStateCopyWithImpl(this._self, this._then);

  final _SuccessState _self;
  final $Res Function(_SuccessState) _then;

  /// Create a copy of OverviewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? date = null,
    Object? foodRecords = null,
  }) {
    return _then(_SuccessState(
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      foodRecords: null == foodRecords
          ? _self._foodRecords
          : foodRecords // ignore: cast_nullable_to_non_nullable
              as List<FoodRecord>,
    ));
  }
}

// dart format on
