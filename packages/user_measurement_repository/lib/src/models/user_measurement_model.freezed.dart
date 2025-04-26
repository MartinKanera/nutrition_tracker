// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_measurement_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserMeasurement {
  int get id => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get height => throw _privateConstructorUsedError;
  int get age => throw _privateConstructorUsedError;
  ActivityLevel get activityLevel => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserMeasurementCopyWith<UserMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMeasurementCopyWith<$Res> {
  factory $UserMeasurementCopyWith(
          UserMeasurement value, $Res Function(UserMeasurement) then) =
      _$UserMeasurementCopyWithImpl<$Res, UserMeasurement>;
  @useResult
  $Res call(
      {int id,
      double weight,
      double height,
      int age,
      ActivityLevel activityLevel,
      DateTime date});
}

/// @nodoc
class _$UserMeasurementCopyWithImpl<$Res, $Val extends UserMeasurement>
    implements $UserMeasurementCopyWith<$Res> {
  _$UserMeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weight = null,
    Object? height = null,
    Object? age = null,
    Object? activityLevel = null,
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMeasurementImplCopyWith<$Res>
    implements $UserMeasurementCopyWith<$Res> {
  factory _$$UserMeasurementImplCopyWith(_$UserMeasurementImpl value,
          $Res Function(_$UserMeasurementImpl) then) =
      __$$UserMeasurementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      double weight,
      double height,
      int age,
      ActivityLevel activityLevel,
      DateTime date});
}

/// @nodoc
class __$$UserMeasurementImplCopyWithImpl<$Res>
    extends _$UserMeasurementCopyWithImpl<$Res, _$UserMeasurementImpl>
    implements _$$UserMeasurementImplCopyWith<$Res> {
  __$$UserMeasurementImplCopyWithImpl(
      _$UserMeasurementImpl _value, $Res Function(_$UserMeasurementImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? weight = null,
    Object? height = null,
    Object? age = null,
    Object? activityLevel = null,
    Object? date = null,
  }) {
    return _then(_$UserMeasurementImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$UserMeasurementImpl implements _UserMeasurement {
  const _$UserMeasurementImpl(
      {required this.id,
      required this.weight,
      required this.height,
      required this.age,
      required this.activityLevel,
      required this.date});

  @override
  final int id;
  @override
  final double weight;
  @override
  final double height;
  @override
  final int age;
  @override
  final ActivityLevel activityLevel;
  @override
  final DateTime date;

  @override
  String toString() {
    return 'UserMeasurement(id: $id, weight: $weight, height: $height, age: $age, activityLevel: $activityLevel, date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMeasurementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.activityLevel, activityLevel) ||
                other.activityLevel == activityLevel) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, weight, height, age, activityLevel, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMeasurementImplCopyWith<_$UserMeasurementImpl> get copyWith =>
      __$$UserMeasurementImplCopyWithImpl<_$UserMeasurementImpl>(
          this, _$identity);
}

abstract class _UserMeasurement implements UserMeasurement {
  const factory _UserMeasurement(
      {required final int id,
      required final double weight,
      required final double height,
      required final int age,
      required final ActivityLevel activityLevel,
      required final DateTime date}) = _$UserMeasurementImpl;

  @override
  int get id;
  @override
  double get weight;
  @override
  double get height;
  @override
  int get age;
  @override
  ActivityLevel get activityLevel;
  @override
  DateTime get date;
  @override
  @JsonKey(ignore: true)
  _$$UserMeasurementImplCopyWith<_$UserMeasurementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
