import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrition_tracker/extensions/date_time_extensions.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

part 'overview_bloc.freezed.dart';
part 'overview_event.dart';
part 'overview_state.dart';

class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  // Set initial state to today
  OverviewBloc({
    required this.foodRecordRepository,
    required this.userMeasurementRepository,
  }) : super(OverviewState.initial(date: DateTimeExtensions.todayStripped())) {
    on<_DayChanged>(_onDayChanged);
    on<_UpdateFoodRecord>(_onUpdateFoodRecord);
    on<_DeleteFoodRecord>(_onDeleteFoodRecord);
  }

  final FoodRecordRepository foodRecordRepository;
  final UserMeasurementRepository userMeasurementRepository;

  double _calculateTDEE(UserMeasurement userMeasurement) {
    final weight = userMeasurement.weight;
    final height = userMeasurement.height;
    final age = userMeasurement.age;

    final activityFactor = switch (userMeasurement.activityLevel) {
      ActivityLevel.sedentary => 1.2,
      ActivityLevel.light => 1.375,
      ActivityLevel.moderate => 1.55,
      ActivityLevel.active => 1.725,
      ActivityLevel.veryActive => 1.9,
    };

    final calories = (10 * weight) + (6.25 * height) - (5 * age) + 5;

    return calories * activityFactor;
  }

  OverviewStatistics _resolveStatistics(
    List<FoodRecord> records,
    UserMeasurement userMeasurement,
  ) {
    final expectedCalories = _calculateTDEE(userMeasurement);

    return OverviewStatistics(
      consumedCalories:
          records.fold<double>(0, (sum, record) => sum + record.calories),
      consumedProtein:
          records.fold<double>(0, (sum, record) => sum + record.protein),
      consumedCarbs:
          records.fold<double>(0, (sum, record) => sum + record.carbs),
      consumedFat: records.fold<double>(0, (sum, record) => sum + record.fat),
      consumedSaturatedFat:
          records.fold<double>(0, (sum, record) => sum + record.saturatedFat),
      consumedFiber:
          records.fold<double>(0, (sum, record) => sum + record.fiber),
      consumedSugars:
          records.fold<double>(0, (sum, record) => sum + record.sugars),
      expectedCalories: expectedCalories,
      expectedProtein: 0.25 * expectedCalories / 4,
      expectedCarbs: 0.5 * expectedCalories / 4,
      expectedFat: 0.25 * expectedCalories / 9,
      expectedSaturatedFat: expectedCalories * 0.07 / 9,
      expectedFiber: expectedCalories / 1000 * 14,
      expectedSugars: expectedCalories * 0.1 / 4,
    );
  }

  Future<void> _onDayChanged(
    _DayChanged event,
    Emitter<OverviewState> emit,
  ) async {
    emit(OverviewState.loading(date: event.date));

    final userMeasurement =
        await userMeasurementRepository.getWeightForDay(event.date);

    if (userMeasurement == null) {
      emit(
        OverviewState.failure(
          date: event.date,
          issue: OverviewIssue.missingUserMeasurement,
        ),
      );
      return;
    }

    await emit.forEach(
      foodRecordRepository.watchFoodForDay(event.date),
      onData: (records) {
        return OverviewState.success(
          date: event.date,
          foodGroupedByMealType: groupBy(
            records,
            (record) => record.mealType,
          ),
          statistics: _resolveStatistics(records, userMeasurement),
        );
      },
    );
  }

  Future<void> _onUpdateFoodRecord(
    _UpdateFoodRecord event,
    Emitter<OverviewState> emit,
  ) async {
    emit(OverviewState.loading(date: state.date));

    await foodRecordRepository.updateFoodRecord(event.foodRecord);
  }

  Future<void> _onDeleteFoodRecord(
    _DeleteFoodRecord event,
    Emitter<OverviewState> emit,
  ) async {
    await foodRecordRepository.deleteFoodRecord(event.foodRecord);
  }
}
