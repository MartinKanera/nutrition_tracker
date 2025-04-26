import 'package:bloc/bloc.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nutrition_tracker/extensions/date_time_extensions.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

part 'overview_event.dart';
part 'overview_state.dart';
part 'overview_bloc.freezed.dart';

class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  // Set initial state to today
  OverviewBloc({
    required this.foodRecordRepository,
    required this.userMeasurementRepository,
  }) : super(OverviewState.initial(date: DateTimeExtensions.todayStripped())) {
    on<_DayChanged>(_onDayChanged);
  }

  final FoodRecordRepository foodRecordRepository;
  final UserMeasurementRepository userMeasurementRepository;

  Future<void> _onDayChanged(
    _DayChanged event,
    Emitter<OverviewState> emit,
  ) async {
    emit(OverviewState.loading(date: event.date));

    final foodRecords = await foodRecordRepository.getFoodForDay(event.date);
    final userMeasurement =
        await userMeasurementRepository.getWeightForDay(event.date);

    // TODO(Martin): test this
    if (userMeasurement == null) {
      emit(
        OverviewState.failure(
          date: event.date,
          issue: OverviewIssue.missingUserMeasurement,
        ),
      );
      return;
    }

    final consumedCalories =
        foodRecords.fold<double>(0, (sum, record) => sum + record.calories);
    final consumedProtein =
        foodRecords.fold<double>(0, (sum, record) => sum + record.protein);
    final consumedCarbs =
        foodRecords.fold<double>(0, (sum, record) => sum + record.carbs);
    final consumedFat =
        foodRecords.fold<double>(0, (sum, record) => sum + record.fat);
    final consumedSaturatedFat =
        foodRecords.fold<double>(0, (sum, record) => sum + record.saturatedFat);
    final consumedFiber =
        foodRecords.fold<double>(0, (sum, record) => sum + record.fiber);
    final consumedSugars =
        foodRecords.fold<double>(0, (sum, record) => sum + record.sugars);

    final expectedCalories = _calculateTDEE(userMeasurement);

    emit(
      OverviewState.success(
        date: event.date,
        foodRecords: foodRecords,
        statistics: OverviewStatistics(
          consumedCalories: consumedCalories,
          consumedProtein: consumedProtein,
          consumedCarbs: consumedCarbs,
          consumedFat: consumedFat,
          consumedSaturatedFat: consumedSaturatedFat,
          consumedFiber: consumedFiber,
          consumedSugars: consumedSugars,
          expectedCalories: expectedCalories,
          expectedProtein: 0.25 * expectedCalories / 4,
          expectedCarbs: 0.5 * expectedCalories / 4,
          expectedFat: 0.25 * expectedCalories / 9,
          expectedSaturatedFat: expectedCalories * 0.07 / 9,
          expectedFiber: expectedCalories / 1000 * 14,
          expectedSugars: expectedCalories * 0.1 / 4,
        ),
      ),
    );
  }

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
}
