// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'overview_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OverviewEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) dayChanged,
    required TResult Function(FoodRecord foodRecord) deleteFoodRecord,
    required TResult Function(FoodRecord foodRecord) updateFoodRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? dayChanged,
    TResult? Function(FoodRecord foodRecord)? deleteFoodRecord,
    TResult? Function(FoodRecord foodRecord)? updateFoodRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? dayChanged,
    TResult Function(FoodRecord foodRecord)? deleteFoodRecord,
    TResult Function(FoodRecord foodRecord)? updateFoodRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DayChanged value) dayChanged,
    required TResult Function(_DeleteFoodRecord value) deleteFoodRecord,
    required TResult Function(_UpdateFoodRecord value) updateFoodRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DayChanged value)? dayChanged,
    TResult? Function(_DeleteFoodRecord value)? deleteFoodRecord,
    TResult? Function(_UpdateFoodRecord value)? updateFoodRecord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DayChanged value)? dayChanged,
    TResult Function(_DeleteFoodRecord value)? deleteFoodRecord,
    TResult Function(_UpdateFoodRecord value)? updateFoodRecord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewEventCopyWith<$Res> {
  factory $OverviewEventCopyWith(
          OverviewEvent value, $Res Function(OverviewEvent) then) =
      _$OverviewEventCopyWithImpl<$Res, OverviewEvent>;
}

/// @nodoc
class _$OverviewEventCopyWithImpl<$Res, $Val extends OverviewEvent>
    implements $OverviewEventCopyWith<$Res> {
  _$OverviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DayChangedImplCopyWith<$Res> {
  factory _$$DayChangedImplCopyWith(
          _$DayChangedImpl value, $Res Function(_$DayChangedImpl) then) =
      __$$DayChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DayChangedImplCopyWithImpl<$Res>
    extends _$OverviewEventCopyWithImpl<$Res, _$DayChangedImpl>
    implements _$$DayChangedImplCopyWith<$Res> {
  __$$DayChangedImplCopyWithImpl(
      _$DayChangedImpl _value, $Res Function(_$DayChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DayChangedImpl(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DayChangedImpl implements _DayChanged {
  const _$DayChangedImpl(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'OverviewEvent.dayChanged(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayChangedImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DayChangedImplCopyWith<_$DayChangedImpl> get copyWith =>
      __$$DayChangedImplCopyWithImpl<_$DayChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) dayChanged,
    required TResult Function(FoodRecord foodRecord) deleteFoodRecord,
    required TResult Function(FoodRecord foodRecord) updateFoodRecord,
  }) {
    return dayChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? dayChanged,
    TResult? Function(FoodRecord foodRecord)? deleteFoodRecord,
    TResult? Function(FoodRecord foodRecord)? updateFoodRecord,
  }) {
    return dayChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? dayChanged,
    TResult Function(FoodRecord foodRecord)? deleteFoodRecord,
    TResult Function(FoodRecord foodRecord)? updateFoodRecord,
    required TResult orElse(),
  }) {
    if (dayChanged != null) {
      return dayChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DayChanged value) dayChanged,
    required TResult Function(_DeleteFoodRecord value) deleteFoodRecord,
    required TResult Function(_UpdateFoodRecord value) updateFoodRecord,
  }) {
    return dayChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DayChanged value)? dayChanged,
    TResult? Function(_DeleteFoodRecord value)? deleteFoodRecord,
    TResult? Function(_UpdateFoodRecord value)? updateFoodRecord,
  }) {
    return dayChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DayChanged value)? dayChanged,
    TResult Function(_DeleteFoodRecord value)? deleteFoodRecord,
    TResult Function(_UpdateFoodRecord value)? updateFoodRecord,
    required TResult orElse(),
  }) {
    if (dayChanged != null) {
      return dayChanged(this);
    }
    return orElse();
  }
}

abstract class _DayChanged implements OverviewEvent {
  const factory _DayChanged(final DateTime date) = _$DayChangedImpl;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DayChangedImplCopyWith<_$DayChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteFoodRecordImplCopyWith<$Res> {
  factory _$$DeleteFoodRecordImplCopyWith(_$DeleteFoodRecordImpl value,
          $Res Function(_$DeleteFoodRecordImpl) then) =
      __$$DeleteFoodRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FoodRecord foodRecord});

  $FoodRecordCopyWith<$Res> get foodRecord;
}

/// @nodoc
class __$$DeleteFoodRecordImplCopyWithImpl<$Res>
    extends _$OverviewEventCopyWithImpl<$Res, _$DeleteFoodRecordImpl>
    implements _$$DeleteFoodRecordImplCopyWith<$Res> {
  __$$DeleteFoodRecordImplCopyWithImpl(_$DeleteFoodRecordImpl _value,
      $Res Function(_$DeleteFoodRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodRecord = null,
  }) {
    return _then(_$DeleteFoodRecordImpl(
      foodRecord: null == foodRecord
          ? _value.foodRecord
          : foodRecord // ignore: cast_nullable_to_non_nullable
              as FoodRecord,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodRecordCopyWith<$Res> get foodRecord {
    return $FoodRecordCopyWith<$Res>(_value.foodRecord, (value) {
      return _then(_value.copyWith(foodRecord: value));
    });
  }
}

/// @nodoc

class _$DeleteFoodRecordImpl implements _DeleteFoodRecord {
  const _$DeleteFoodRecordImpl({required this.foodRecord});

  @override
  final FoodRecord foodRecord;

  @override
  String toString() {
    return 'OverviewEvent.deleteFoodRecord(foodRecord: $foodRecord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteFoodRecordImpl &&
            (identical(other.foodRecord, foodRecord) ||
                other.foodRecord == foodRecord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodRecord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteFoodRecordImplCopyWith<_$DeleteFoodRecordImpl> get copyWith =>
      __$$DeleteFoodRecordImplCopyWithImpl<_$DeleteFoodRecordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) dayChanged,
    required TResult Function(FoodRecord foodRecord) deleteFoodRecord,
    required TResult Function(FoodRecord foodRecord) updateFoodRecord,
  }) {
    return deleteFoodRecord(foodRecord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? dayChanged,
    TResult? Function(FoodRecord foodRecord)? deleteFoodRecord,
    TResult? Function(FoodRecord foodRecord)? updateFoodRecord,
  }) {
    return deleteFoodRecord?.call(foodRecord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? dayChanged,
    TResult Function(FoodRecord foodRecord)? deleteFoodRecord,
    TResult Function(FoodRecord foodRecord)? updateFoodRecord,
    required TResult orElse(),
  }) {
    if (deleteFoodRecord != null) {
      return deleteFoodRecord(foodRecord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DayChanged value) dayChanged,
    required TResult Function(_DeleteFoodRecord value) deleteFoodRecord,
    required TResult Function(_UpdateFoodRecord value) updateFoodRecord,
  }) {
    return deleteFoodRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DayChanged value)? dayChanged,
    TResult? Function(_DeleteFoodRecord value)? deleteFoodRecord,
    TResult? Function(_UpdateFoodRecord value)? updateFoodRecord,
  }) {
    return deleteFoodRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DayChanged value)? dayChanged,
    TResult Function(_DeleteFoodRecord value)? deleteFoodRecord,
    TResult Function(_UpdateFoodRecord value)? updateFoodRecord,
    required TResult orElse(),
  }) {
    if (deleteFoodRecord != null) {
      return deleteFoodRecord(this);
    }
    return orElse();
  }
}

abstract class _DeleteFoodRecord implements OverviewEvent {
  const factory _DeleteFoodRecord({required final FoodRecord foodRecord}) =
      _$DeleteFoodRecordImpl;

  FoodRecord get foodRecord;
  @JsonKey(ignore: true)
  _$$DeleteFoodRecordImplCopyWith<_$DeleteFoodRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateFoodRecordImplCopyWith<$Res> {
  factory _$$UpdateFoodRecordImplCopyWith(_$UpdateFoodRecordImpl value,
          $Res Function(_$UpdateFoodRecordImpl) then) =
      __$$UpdateFoodRecordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FoodRecord foodRecord});

  $FoodRecordCopyWith<$Res> get foodRecord;
}

/// @nodoc
class __$$UpdateFoodRecordImplCopyWithImpl<$Res>
    extends _$OverviewEventCopyWithImpl<$Res, _$UpdateFoodRecordImpl>
    implements _$$UpdateFoodRecordImplCopyWith<$Res> {
  __$$UpdateFoodRecordImplCopyWithImpl(_$UpdateFoodRecordImpl _value,
      $Res Function(_$UpdateFoodRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodRecord = null,
  }) {
    return _then(_$UpdateFoodRecordImpl(
      foodRecord: null == foodRecord
          ? _value.foodRecord
          : foodRecord // ignore: cast_nullable_to_non_nullable
              as FoodRecord,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodRecordCopyWith<$Res> get foodRecord {
    return $FoodRecordCopyWith<$Res>(_value.foodRecord, (value) {
      return _then(_value.copyWith(foodRecord: value));
    });
  }
}

/// @nodoc

class _$UpdateFoodRecordImpl implements _UpdateFoodRecord {
  const _$UpdateFoodRecordImpl({required this.foodRecord});

  @override
  final FoodRecord foodRecord;

  @override
  String toString() {
    return 'OverviewEvent.updateFoodRecord(foodRecord: $foodRecord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateFoodRecordImpl &&
            (identical(other.foodRecord, foodRecord) ||
                other.foodRecord == foodRecord));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodRecord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateFoodRecordImplCopyWith<_$UpdateFoodRecordImpl> get copyWith =>
      __$$UpdateFoodRecordImplCopyWithImpl<_$UpdateFoodRecordImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) dayChanged,
    required TResult Function(FoodRecord foodRecord) deleteFoodRecord,
    required TResult Function(FoodRecord foodRecord) updateFoodRecord,
  }) {
    return updateFoodRecord(foodRecord);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? dayChanged,
    TResult? Function(FoodRecord foodRecord)? deleteFoodRecord,
    TResult? Function(FoodRecord foodRecord)? updateFoodRecord,
  }) {
    return updateFoodRecord?.call(foodRecord);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? dayChanged,
    TResult Function(FoodRecord foodRecord)? deleteFoodRecord,
    TResult Function(FoodRecord foodRecord)? updateFoodRecord,
    required TResult orElse(),
  }) {
    if (updateFoodRecord != null) {
      return updateFoodRecord(foodRecord);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DayChanged value) dayChanged,
    required TResult Function(_DeleteFoodRecord value) deleteFoodRecord,
    required TResult Function(_UpdateFoodRecord value) updateFoodRecord,
  }) {
    return updateFoodRecord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DayChanged value)? dayChanged,
    TResult? Function(_DeleteFoodRecord value)? deleteFoodRecord,
    TResult? Function(_UpdateFoodRecord value)? updateFoodRecord,
  }) {
    return updateFoodRecord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DayChanged value)? dayChanged,
    TResult Function(_DeleteFoodRecord value)? deleteFoodRecord,
    TResult Function(_UpdateFoodRecord value)? updateFoodRecord,
    required TResult orElse(),
  }) {
    if (updateFoodRecord != null) {
      return updateFoodRecord(this);
    }
    return orElse();
  }
}

abstract class _UpdateFoodRecord implements OverviewEvent {
  const factory _UpdateFoodRecord({required final FoodRecord foodRecord}) =
      _$UpdateFoodRecordImpl;

  FoodRecord get foodRecord;
  @JsonKey(ignore: true)
  _$$UpdateFoodRecordImplCopyWith<_$UpdateFoodRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OverviewState {
  DateTime get date => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(DateTime date) loading,
    required TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)
        success,
    required TResult Function(DateTime date, OverviewIssue issue) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(DateTime date)? loading,
    TResult? Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult? Function(DateTime date, OverviewIssue issue)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(DateTime date)? loading,
    TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult Function(DateTime date, OverviewIssue issue)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(FailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(FailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OverviewStateCopyWith<OverviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverviewStateCopyWith<$Res> {
  factory $OverviewStateCopyWith(
          OverviewState value, $Res Function(OverviewState) then) =
      _$OverviewStateCopyWithImpl<$Res, OverviewState>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class _$OverviewStateCopyWithImpl<$Res, $Val extends OverviewState>
    implements $OverviewStateCopyWith<$Res> {
  _$OverviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$InitialStateImplCopyWith(
          _$InitialStateImpl value, $Res Function(_$InitialStateImpl) then) =
      __$$InitialStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$InitialStateImpl>
    implements _$$InitialStateImplCopyWith<$Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl _value, $Res Function(_$InitialStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$InitialStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$InitialStateImpl implements InitialState {
  const _$InitialStateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'OverviewState.initial(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialStateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      __$$InitialStateImplCopyWithImpl<_$InitialStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(DateTime date) loading,
    required TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)
        success,
    required TResult Function(DateTime date, OverviewIssue issue) failure,
  }) {
    return initial(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(DateTime date)? loading,
    TResult? Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult? Function(DateTime date, OverviewIssue issue)? failure,
  }) {
    return initial?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(DateTime date)? loading,
    TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult Function(DateTime date, OverviewIssue issue)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(FailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(FailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialState implements OverviewState {
  const factory InitialState({required final DateTime date}) =
      _$InitialStateImpl;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$InitialStateImplCopyWith<_$InitialStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$LoadingStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$LoadingStateImpl implements LoadingState {
  const _$LoadingStateImpl({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'OverviewState.loading(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingStateImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      __$$LoadingStateImplCopyWithImpl<_$LoadingStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(DateTime date) loading,
    required TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)
        success,
    required TResult Function(DateTime date, OverviewIssue issue) failure,
  }) {
    return loading(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(DateTime date)? loading,
    TResult? Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult? Function(DateTime date, OverviewIssue issue)? failure,
  }) {
    return loading?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(DateTime date)? loading,
    TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult Function(DateTime date, OverviewIssue issue)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(FailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(FailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingState implements OverviewState {
  const factory LoadingState({required final DateTime date}) =
      _$LoadingStateImpl;

  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$LoadingStateImplCopyWith<_$LoadingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessStateImplCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$SuccessStateImplCopyWith(
          _$SuccessStateImpl value, $Res Function(_$SuccessStateImpl) then) =
      __$$SuccessStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
      OverviewStatistics statistics});
}

/// @nodoc
class __$$SuccessStateImplCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$SuccessStateImpl>
    implements _$$SuccessStateImplCopyWith<$Res> {
  __$$SuccessStateImplCopyWithImpl(
      _$SuccessStateImpl _value, $Res Function(_$SuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? foodGroupedByMealType = null,
    Object? statistics = null,
  }) {
    return _then(_$SuccessStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      foodGroupedByMealType: null == foodGroupedByMealType
          ? _value._foodGroupedByMealType
          : foodGroupedByMealType // ignore: cast_nullable_to_non_nullable
              as Map<MealType, List<FoodRecordWithNutrition>>,
      statistics: null == statistics
          ? _value.statistics
          : statistics // ignore: cast_nullable_to_non_nullable
              as OverviewStatistics,
    ));
  }
}

/// @nodoc

class _$SuccessStateImpl implements SuccessState {
  const _$SuccessStateImpl(
      {required this.date,
      final Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType =
          const {
        MealType.breakfast: <FoodRecordWithNutrition>[],
        MealType.morningSnack: <FoodRecordWithNutrition>[],
        MealType.lunch: <FoodRecordWithNutrition>[],
        MealType.afternoonSnack: <FoodRecordWithNutrition>[],
        MealType.dinner: <FoodRecordWithNutrition>[]
      },
      required this.statistics})
      : _foodGroupedByMealType = foodGroupedByMealType;

  @override
  final DateTime date;
  final Map<MealType, List<FoodRecordWithNutrition>> _foodGroupedByMealType;
  @override
  @JsonKey()
  Map<MealType, List<FoodRecordWithNutrition>> get foodGroupedByMealType {
    if (_foodGroupedByMealType is EqualUnmodifiableMapView)
      return _foodGroupedByMealType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_foodGroupedByMealType);
  }

  @override
  final OverviewStatistics statistics;

  @override
  String toString() {
    return 'OverviewState.success(date: $date, foodGroupedByMealType: $foodGroupedByMealType, statistics: $statistics)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessStateImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._foodGroupedByMealType, _foodGroupedByMealType) &&
            (identical(other.statistics, statistics) ||
                other.statistics == statistics));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date,
      const DeepCollectionEquality().hash(_foodGroupedByMealType), statistics);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      __$$SuccessStateImplCopyWithImpl<_$SuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(DateTime date) loading,
    required TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)
        success,
    required TResult Function(DateTime date, OverviewIssue issue) failure,
  }) {
    return success(date, foodGroupedByMealType, statistics);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(DateTime date)? loading,
    TResult? Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult? Function(DateTime date, OverviewIssue issue)? failure,
  }) {
    return success?.call(date, foodGroupedByMealType, statistics);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(DateTime date)? loading,
    TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult Function(DateTime date, OverviewIssue issue)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(date, foodGroupedByMealType, statistics);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(FailureState value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(FailureState value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class SuccessState implements OverviewState {
  const factory SuccessState(
      {required final DateTime date,
      final Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
      required final OverviewStatistics statistics}) = _$SuccessStateImpl;

  @override
  DateTime get date;
  Map<MealType, List<FoodRecordWithNutrition>> get foodGroupedByMealType;
  OverviewStatistics get statistics;
  @override
  @JsonKey(ignore: true)
  _$$SuccessStateImplCopyWith<_$SuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureStateImplCopyWith<$Res>
    implements $OverviewStateCopyWith<$Res> {
  factory _$$FailureStateImplCopyWith(
          _$FailureStateImpl value, $Res Function(_$FailureStateImpl) then) =
      __$$FailureStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime date, OverviewIssue issue});
}

/// @nodoc
class __$$FailureStateImplCopyWithImpl<$Res>
    extends _$OverviewStateCopyWithImpl<$Res, _$FailureStateImpl>
    implements _$$FailureStateImplCopyWith<$Res> {
  __$$FailureStateImplCopyWithImpl(
      _$FailureStateImpl _value, $Res Function(_$FailureStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? issue = null,
  }) {
    return _then(_$FailureStateImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      issue: null == issue
          ? _value.issue
          : issue // ignore: cast_nullable_to_non_nullable
              as OverviewIssue,
    ));
  }
}

/// @nodoc

class _$FailureStateImpl implements FailureState {
  const _$FailureStateImpl({required this.date, required this.issue});

  @override
  final DateTime date;
  @override
  final OverviewIssue issue;

  @override
  String toString() {
    return 'OverviewState.failure(date: $date, issue: $issue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureStateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.issue, issue) || other.issue == issue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date, issue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      __$$FailureStateImplCopyWithImpl<_$FailureStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DateTime date) initial,
    required TResult Function(DateTime date) loading,
    required TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)
        success,
    required TResult Function(DateTime date, OverviewIssue issue) failure,
  }) {
    return failure(date, issue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DateTime date)? initial,
    TResult? Function(DateTime date)? loading,
    TResult? Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult? Function(DateTime date, OverviewIssue issue)? failure,
  }) {
    return failure?.call(date, issue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DateTime date)? initial,
    TResult Function(DateTime date)? loading,
    TResult Function(
            DateTime date,
            Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
            OverviewStatistics statistics)?
        success,
    TResult Function(DateTime date, OverviewIssue issue)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(date, issue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialState value) initial,
    required TResult Function(LoadingState value) loading,
    required TResult Function(SuccessState value) success,
    required TResult Function(FailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialState value)? initial,
    TResult? Function(LoadingState value)? loading,
    TResult? Function(SuccessState value)? success,
    TResult? Function(FailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialState value)? initial,
    TResult Function(LoadingState value)? loading,
    TResult Function(SuccessState value)? success,
    TResult Function(FailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class FailureState implements OverviewState {
  const factory FailureState(
      {required final DateTime date,
      required final OverviewIssue issue}) = _$FailureStateImpl;

  @override
  DateTime get date;
  OverviewIssue get issue;
  @override
  @JsonKey(ignore: true)
  _$$FailureStateImplCopyWith<_$FailureStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
