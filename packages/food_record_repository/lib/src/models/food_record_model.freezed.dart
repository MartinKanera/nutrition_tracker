// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FoodRecord {
  String get name => throw _privateConstructorUsedError;
  double get grams => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  MealType get mealType => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodRecordCopyWith<FoodRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodRecordCopyWith<$Res> {
  factory $FoodRecordCopyWith(
          FoodRecord value, $Res Function(FoodRecord) then) =
      _$FoodRecordCopyWithImpl<$Res, FoodRecord>;
  @useResult
  $Res call(
      {String name, double grams, DateTime date, MealType mealType, int? id});
}

/// @nodoc
class _$FoodRecordCopyWithImpl<$Res, $Val extends FoodRecord>
    implements $FoodRecordCopyWith<$Res> {
  _$FoodRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? grams = null,
    Object? date = null,
    Object? mealType = null,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      grams: null == grams
          ? _value.grams
          : grams // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodRecordImplCopyWith<$Res>
    implements $FoodRecordCopyWith<$Res> {
  factory _$$FoodRecordImplCopyWith(
          _$FoodRecordImpl value, $Res Function(_$FoodRecordImpl) then) =
      __$$FoodRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, double grams, DateTime date, MealType mealType, int? id});
}

/// @nodoc
class __$$FoodRecordImplCopyWithImpl<$Res>
    extends _$FoodRecordCopyWithImpl<$Res, _$FoodRecordImpl>
    implements _$$FoodRecordImplCopyWith<$Res> {
  __$$FoodRecordImplCopyWithImpl(
      _$FoodRecordImpl _value, $Res Function(_$FoodRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? grams = null,
    Object? date = null,
    Object? mealType = null,
    Object? id = freezed,
  }) {
    return _then(_$FoodRecordImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      grams: null == grams
          ? _value.grams
          : grams // ignore: cast_nullable_to_non_nullable
              as double,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mealType: null == mealType
          ? _value.mealType
          : mealType // ignore: cast_nullable_to_non_nullable
              as MealType,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FoodRecordImpl implements _FoodRecord {
  const _$FoodRecordImpl(
      {required this.name,
      required this.grams,
      required this.date,
      required this.mealType,
      this.id});

  @override
  final String name;
  @override
  final double grams;
  @override
  final DateTime date;
  @override
  final MealType mealType;
  @override
  final int? id;

  @override
  String toString() {
    return 'FoodRecord(name: $name, grams: $grams, date: $date, mealType: $mealType, id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodRecordImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.grams, grams) || other.grams == grams) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.mealType, mealType) ||
                other.mealType == mealType) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, grams, date, mealType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodRecordImplCopyWith<_$FoodRecordImpl> get copyWith =>
      __$$FoodRecordImplCopyWithImpl<_$FoodRecordImpl>(this, _$identity);
}

abstract class _FoodRecord implements FoodRecord {
  const factory _FoodRecord(
      {required final String name,
      required final double grams,
      required final DateTime date,
      required final MealType mealType,
      final int? id}) = _$FoodRecordImpl;

  @override
  String get name;
  @override
  double get grams;
  @override
  DateTime get date;
  @override
  MealType get mealType;
  @override
  int? get id;
  @override
  @JsonKey(ignore: true)
  _$$FoodRecordImplCopyWith<_$FoodRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FoodRecordWithNutrition {
  FoodRecord get record => throw _privateConstructorUsedError;
  FoodNutrients get nutrients => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FoodRecordWithNutritionCopyWith<FoodRecordWithNutrition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodRecordWithNutritionCopyWith<$Res> {
  factory $FoodRecordWithNutritionCopyWith(FoodRecordWithNutrition value,
          $Res Function(FoodRecordWithNutrition) then) =
      _$FoodRecordWithNutritionCopyWithImpl<$Res, FoodRecordWithNutrition>;
  @useResult
  $Res call({FoodRecord record, FoodNutrients nutrients});

  $FoodRecordCopyWith<$Res> get record;
  $FoodNutrientsCopyWith<$Res> get nutrients;
}

/// @nodoc
class _$FoodRecordWithNutritionCopyWithImpl<$Res,
        $Val extends FoodRecordWithNutrition>
    implements $FoodRecordWithNutritionCopyWith<$Res> {
  _$FoodRecordWithNutritionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
    Object? nutrients = null,
  }) {
    return _then(_value.copyWith(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as FoodRecord,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as FoodNutrients,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodRecordCopyWith<$Res> get record {
    return $FoodRecordCopyWith<$Res>(_value.record, (value) {
      return _then(_value.copyWith(record: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodNutrientsCopyWith<$Res> get nutrients {
    return $FoodNutrientsCopyWith<$Res>(_value.nutrients, (value) {
      return _then(_value.copyWith(nutrients: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FoodRecordWithNutritionImplCopyWith<$Res>
    implements $FoodRecordWithNutritionCopyWith<$Res> {
  factory _$$FoodRecordWithNutritionImplCopyWith(
          _$FoodRecordWithNutritionImpl value,
          $Res Function(_$FoodRecordWithNutritionImpl) then) =
      __$$FoodRecordWithNutritionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodRecord record, FoodNutrients nutrients});

  @override
  $FoodRecordCopyWith<$Res> get record;
  @override
  $FoodNutrientsCopyWith<$Res> get nutrients;
}

/// @nodoc
class __$$FoodRecordWithNutritionImplCopyWithImpl<$Res>
    extends _$FoodRecordWithNutritionCopyWithImpl<$Res,
        _$FoodRecordWithNutritionImpl>
    implements _$$FoodRecordWithNutritionImplCopyWith<$Res> {
  __$$FoodRecordWithNutritionImplCopyWithImpl(
      _$FoodRecordWithNutritionImpl _value,
      $Res Function(_$FoodRecordWithNutritionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? record = null,
    Object? nutrients = null,
  }) {
    return _then(_$FoodRecordWithNutritionImpl(
      record: null == record
          ? _value.record
          : record // ignore: cast_nullable_to_non_nullable
              as FoodRecord,
      nutrients: null == nutrients
          ? _value.nutrients
          : nutrients // ignore: cast_nullable_to_non_nullable
              as FoodNutrients,
    ));
  }
}

/// @nodoc

class _$FoodRecordWithNutritionImpl implements _FoodRecordWithNutrition {
  const _$FoodRecordWithNutritionImpl(
      {required this.record, required this.nutrients});

  @override
  final FoodRecord record;
  @override
  final FoodNutrients nutrients;

  @override
  String toString() {
    return 'FoodRecordWithNutrition(record: $record, nutrients: $nutrients)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodRecordWithNutritionImpl &&
            (identical(other.record, record) || other.record == record) &&
            (identical(other.nutrients, nutrients) ||
                other.nutrients == nutrients));
  }

  @override
  int get hashCode => Object.hash(runtimeType, record, nutrients);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodRecordWithNutritionImplCopyWith<_$FoodRecordWithNutritionImpl>
      get copyWith => __$$FoodRecordWithNutritionImplCopyWithImpl<
          _$FoodRecordWithNutritionImpl>(this, _$identity);
}

abstract class _FoodRecordWithNutrition implements FoodRecordWithNutrition {
  const factory _FoodRecordWithNutrition(
      {required final FoodRecord record,
      required final FoodNutrients nutrients}) = _$FoodRecordWithNutritionImpl;

  @override
  FoodRecord get record;
  @override
  FoodNutrients get nutrients;
  @override
  @JsonKey(ignore: true)
  _$$FoodRecordWithNutritionImplCopyWith<_$FoodRecordWithNutritionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
