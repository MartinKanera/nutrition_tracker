// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLatestMeasurement,
    required TResult Function(UserMeasurement measurement) updateMeasurement,
    required TResult Function(ActivityLevel activityLevel) updateActivityLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLatestMeasurement,
    TResult? Function(UserMeasurement measurement)? updateMeasurement,
    TResult? Function(ActivityLevel activityLevel)? updateActivityLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLatestMeasurement,
    TResult Function(UserMeasurement measurement)? updateMeasurement,
    TResult Function(ActivityLevel activityLevel)? updateActivityLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestMeasurement value) getLatestMeasurement,
    required TResult Function(_UpdateMeasurement value) updateMeasurement,
    required TResult Function(_UpdateActivityLevel value) updateActivityLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestMeasurement value)? getLatestMeasurement,
    TResult? Function(_UpdateMeasurement value)? updateMeasurement,
    TResult? Function(_UpdateActivityLevel value)? updateActivityLevel,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestMeasurement value)? getLatestMeasurement,
    TResult Function(_UpdateMeasurement value)? updateMeasurement,
    TResult Function(_UpdateActivityLevel value)? updateActivityLevel,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileEventCopyWith<$Res> {
  factory $ProfileEventCopyWith(
          ProfileEvent value, $Res Function(ProfileEvent) then) =
      _$ProfileEventCopyWithImpl<$Res, ProfileEvent>;
}

/// @nodoc
class _$ProfileEventCopyWithImpl<$Res, $Val extends ProfileEvent>
    implements $ProfileEventCopyWith<$Res> {
  _$ProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLatestMeasurementImplCopyWith<$Res> {
  factory _$$GetLatestMeasurementImplCopyWith(_$GetLatestMeasurementImpl value,
          $Res Function(_$GetLatestMeasurementImpl) then) =
      __$$GetLatestMeasurementImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLatestMeasurementImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$GetLatestMeasurementImpl>
    implements _$$GetLatestMeasurementImplCopyWith<$Res> {
  __$$GetLatestMeasurementImplCopyWithImpl(_$GetLatestMeasurementImpl _value,
      $Res Function(_$GetLatestMeasurementImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetLatestMeasurementImpl implements _GetLatestMeasurement {
  const _$GetLatestMeasurementImpl();

  @override
  String toString() {
    return 'ProfileEvent.getLatestMeasurement()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLatestMeasurementImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLatestMeasurement,
    required TResult Function(UserMeasurement measurement) updateMeasurement,
    required TResult Function(ActivityLevel activityLevel) updateActivityLevel,
  }) {
    return getLatestMeasurement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLatestMeasurement,
    TResult? Function(UserMeasurement measurement)? updateMeasurement,
    TResult? Function(ActivityLevel activityLevel)? updateActivityLevel,
  }) {
    return getLatestMeasurement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLatestMeasurement,
    TResult Function(UserMeasurement measurement)? updateMeasurement,
    TResult Function(ActivityLevel activityLevel)? updateActivityLevel,
    required TResult orElse(),
  }) {
    if (getLatestMeasurement != null) {
      return getLatestMeasurement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestMeasurement value) getLatestMeasurement,
    required TResult Function(_UpdateMeasurement value) updateMeasurement,
    required TResult Function(_UpdateActivityLevel value) updateActivityLevel,
  }) {
    return getLatestMeasurement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestMeasurement value)? getLatestMeasurement,
    TResult? Function(_UpdateMeasurement value)? updateMeasurement,
    TResult? Function(_UpdateActivityLevel value)? updateActivityLevel,
  }) {
    return getLatestMeasurement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestMeasurement value)? getLatestMeasurement,
    TResult Function(_UpdateMeasurement value)? updateMeasurement,
    TResult Function(_UpdateActivityLevel value)? updateActivityLevel,
    required TResult orElse(),
  }) {
    if (getLatestMeasurement != null) {
      return getLatestMeasurement(this);
    }
    return orElse();
  }
}

abstract class _GetLatestMeasurement implements ProfileEvent {
  const factory _GetLatestMeasurement() = _$GetLatestMeasurementImpl;
}

/// @nodoc
abstract class _$$UpdateMeasurementImplCopyWith<$Res> {
  factory _$$UpdateMeasurementImplCopyWith(_$UpdateMeasurementImpl value,
          $Res Function(_$UpdateMeasurementImpl) then) =
      __$$UpdateMeasurementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserMeasurement measurement});

  $UserMeasurementCopyWith<$Res> get measurement;
}

/// @nodoc
class __$$UpdateMeasurementImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateMeasurementImpl>
    implements _$$UpdateMeasurementImplCopyWith<$Res> {
  __$$UpdateMeasurementImplCopyWithImpl(_$UpdateMeasurementImpl _value,
      $Res Function(_$UpdateMeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurement = null,
  }) {
    return _then(_$UpdateMeasurementImpl(
      null == measurement
          ? _value.measurement
          : measurement // ignore: cast_nullable_to_non_nullable
              as UserMeasurement,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMeasurementCopyWith<$Res> get measurement {
    return $UserMeasurementCopyWith<$Res>(_value.measurement, (value) {
      return _then(_value.copyWith(measurement: value));
    });
  }
}

/// @nodoc

class _$UpdateMeasurementImpl implements _UpdateMeasurement {
  const _$UpdateMeasurementImpl(this.measurement);

  @override
  final UserMeasurement measurement;

  @override
  String toString() {
    return 'ProfileEvent.updateMeasurement(measurement: $measurement)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateMeasurementImpl &&
            (identical(other.measurement, measurement) ||
                other.measurement == measurement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, measurement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateMeasurementImplCopyWith<_$UpdateMeasurementImpl> get copyWith =>
      __$$UpdateMeasurementImplCopyWithImpl<_$UpdateMeasurementImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLatestMeasurement,
    required TResult Function(UserMeasurement measurement) updateMeasurement,
    required TResult Function(ActivityLevel activityLevel) updateActivityLevel,
  }) {
    return updateMeasurement(measurement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLatestMeasurement,
    TResult? Function(UserMeasurement measurement)? updateMeasurement,
    TResult? Function(ActivityLevel activityLevel)? updateActivityLevel,
  }) {
    return updateMeasurement?.call(measurement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLatestMeasurement,
    TResult Function(UserMeasurement measurement)? updateMeasurement,
    TResult Function(ActivityLevel activityLevel)? updateActivityLevel,
    required TResult orElse(),
  }) {
    if (updateMeasurement != null) {
      return updateMeasurement(measurement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestMeasurement value) getLatestMeasurement,
    required TResult Function(_UpdateMeasurement value) updateMeasurement,
    required TResult Function(_UpdateActivityLevel value) updateActivityLevel,
  }) {
    return updateMeasurement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestMeasurement value)? getLatestMeasurement,
    TResult? Function(_UpdateMeasurement value)? updateMeasurement,
    TResult? Function(_UpdateActivityLevel value)? updateActivityLevel,
  }) {
    return updateMeasurement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestMeasurement value)? getLatestMeasurement,
    TResult Function(_UpdateMeasurement value)? updateMeasurement,
    TResult Function(_UpdateActivityLevel value)? updateActivityLevel,
    required TResult orElse(),
  }) {
    if (updateMeasurement != null) {
      return updateMeasurement(this);
    }
    return orElse();
  }
}

abstract class _UpdateMeasurement implements ProfileEvent {
  const factory _UpdateMeasurement(final UserMeasurement measurement) =
      _$UpdateMeasurementImpl;

  UserMeasurement get measurement;
  @JsonKey(ignore: true)
  _$$UpdateMeasurementImplCopyWith<_$UpdateMeasurementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateActivityLevelImplCopyWith<$Res> {
  factory _$$UpdateActivityLevelImplCopyWith(_$UpdateActivityLevelImpl value,
          $Res Function(_$UpdateActivityLevelImpl) then) =
      __$$UpdateActivityLevelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ActivityLevel activityLevel});
}

/// @nodoc
class __$$UpdateActivityLevelImplCopyWithImpl<$Res>
    extends _$ProfileEventCopyWithImpl<$Res, _$UpdateActivityLevelImpl>
    implements _$$UpdateActivityLevelImplCopyWith<$Res> {
  __$$UpdateActivityLevelImplCopyWithImpl(_$UpdateActivityLevelImpl _value,
      $Res Function(_$UpdateActivityLevelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? activityLevel = null,
  }) {
    return _then(_$UpdateActivityLevelImpl(
      null == activityLevel
          ? _value.activityLevel
          : activityLevel // ignore: cast_nullable_to_non_nullable
              as ActivityLevel,
    ));
  }
}

/// @nodoc

class _$UpdateActivityLevelImpl implements _UpdateActivityLevel {
  const _$UpdateActivityLevelImpl(this.activityLevel);

  @override
  final ActivityLevel activityLevel;

  @override
  String toString() {
    return 'ProfileEvent.updateActivityLevel(activityLevel: $activityLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateActivityLevelImpl &&
            (identical(other.activityLevel, activityLevel) ||
                other.activityLevel == activityLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, activityLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateActivityLevelImplCopyWith<_$UpdateActivityLevelImpl> get copyWith =>
      __$$UpdateActivityLevelImplCopyWithImpl<_$UpdateActivityLevelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getLatestMeasurement,
    required TResult Function(UserMeasurement measurement) updateMeasurement,
    required TResult Function(ActivityLevel activityLevel) updateActivityLevel,
  }) {
    return updateActivityLevel(activityLevel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getLatestMeasurement,
    TResult? Function(UserMeasurement measurement)? updateMeasurement,
    TResult? Function(ActivityLevel activityLevel)? updateActivityLevel,
  }) {
    return updateActivityLevel?.call(activityLevel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getLatestMeasurement,
    TResult Function(UserMeasurement measurement)? updateMeasurement,
    TResult Function(ActivityLevel activityLevel)? updateActivityLevel,
    required TResult orElse(),
  }) {
    if (updateActivityLevel != null) {
      return updateActivityLevel(activityLevel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetLatestMeasurement value) getLatestMeasurement,
    required TResult Function(_UpdateMeasurement value) updateMeasurement,
    required TResult Function(_UpdateActivityLevel value) updateActivityLevel,
  }) {
    return updateActivityLevel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetLatestMeasurement value)? getLatestMeasurement,
    TResult? Function(_UpdateMeasurement value)? updateMeasurement,
    TResult? Function(_UpdateActivityLevel value)? updateActivityLevel,
  }) {
    return updateActivityLevel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetLatestMeasurement value)? getLatestMeasurement,
    TResult Function(_UpdateMeasurement value)? updateMeasurement,
    TResult Function(_UpdateActivityLevel value)? updateActivityLevel,
    required TResult orElse(),
  }) {
    if (updateActivityLevel != null) {
      return updateActivityLevel(this);
    }
    return orElse();
  }
}

abstract class _UpdateActivityLevel implements ProfileEvent {
  const factory _UpdateActivityLevel(final ActivityLevel activityLevel) =
      _$UpdateActivityLevelImpl;

  ActivityLevel get activityLevel;
  @JsonKey(ignore: true)
  _$$UpdateActivityLevelImplCopyWith<_$UpdateActivityLevelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProfileState {
  double get weight => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  ActivityLevel get activityLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {double weight, double height, int age, ActivityLevel activityLevel});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? height = null,
    Object? age = null,
    Object? activityLevel = null,
  }) {
    return _then(_value.copyWith(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      activityLevel: null == activityLevel
          ? _value.activityLevel
          : activityLevel // ignore: cast_nullable_to_non_nullable
              as ActivityLevel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileStateImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileStateImplCopyWith(
          _$ProfileStateImpl value, $Res Function(_$ProfileStateImpl) then) =
      __$$ProfileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double weight, double height, int age, ActivityLevel activityLevel});
}

/// @nodoc
class __$$ProfileStateImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileStateImpl>
    implements _$$ProfileStateImplCopyWith<$Res> {
  __$$ProfileStateImplCopyWithImpl(
      _$ProfileStateImpl _value, $Res Function(_$ProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
    Object? height = null,
    Object? age = null,
    Object? activityLevel = null,
  }) {
    return _then(_$ProfileStateImpl(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double,
      age: null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
      activityLevel: null == activityLevel
          ? _value.activityLevel
          : activityLevel // ignore: cast_nullable_to_non_nullable
              as ActivityLevel,
    ));
  }
}

/// @nodoc

class _$ProfileStateImpl implements _ProfileState {
  const _$ProfileStateImpl(
      {this.weight = 0.0,
      this.height = 0.0,
      this.age = 0,
      this.activityLevel = ActivityLevel.light});

  @override
  @JsonKey()
  final double weight;
  @override
  @JsonKey()
  final double height;
  @override
  @JsonKey()
  final int age;
  @override
  @JsonKey()
  final ActivityLevel activityLevel;

  @override
  String toString() {
    return 'ProfileState(weight: $weight, height: $height, age: $age, activityLevel: $activityLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileStateImpl &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.activityLevel, activityLevel) ||
                other.activityLevel == activityLevel));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, weight, height, age, activityLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      __$$ProfileStateImplCopyWithImpl<_$ProfileStateImpl>(this, _$identity);
}

abstract class _ProfileState implements ProfileState {
  const factory _ProfileState(
      {final double weight,
      final double height,
      final int age,
      final ActivityLevel activityLevel}) = _$ProfileStateImpl;

  @override
  double get weight;
  @override
  double get height;
  @override
  int get age;
  @override
  ActivityLevel get activityLevel;
  @override
  @JsonKey(ignore: true)
  _$$ProfileStateImplCopyWith<_$ProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
