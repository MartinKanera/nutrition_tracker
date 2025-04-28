part of 'overview_bloc.dart';

enum OverviewIssue {
  missingUserMeasurement,
  unknown,
}

class OverviewStatistics {
  const OverviewStatistics({
    // Actually consumed values
    required this.consumedCalories,
    required this.consumedProtein,
    required this.consumedCarbs,
    required this.consumedFat,
    required this.consumedSaturatedFat,
    required this.consumedFiber,
    required this.consumedSugars,
    // 100% values (expected to be consumed for optimal health)
    required this.expectedCalories,
    required this.expectedProtein,
    required this.expectedCarbs,
    required this.expectedFat,
    required this.expectedSaturatedFat,
    required this.expectedFiber,
    required this.expectedSugars,
  });

  final double consumedCalories;
  final double consumedProtein;
  final double consumedCarbs;
  final double consumedFat;
  final double consumedSaturatedFat;
  final double consumedFiber;
  final double consumedSugars;
  final double expectedCalories;
  final double expectedProtein;
  final double expectedCarbs;
  final double expectedFat;
  final double expectedSaturatedFat;
  final double expectedFiber;
  final double expectedSugars;
}

@freezed
sealed class OverviewState with _$OverviewState {
  const factory OverviewState.initial({
    required DateTime date,
  }) = InitialState;
  const factory OverviewState.loading({
    required DateTime date,
  }) = LoadingState;
  const factory OverviewState.success({
    required DateTime date,
    required Map<MealType, List<FoodRecordWithNutrition>> foodGroupedByMealType,
    required OverviewStatistics statistics,
  }) = SuccessState;
  const factory OverviewState.failure({
    required DateTime date,
    required OverviewIssue issue,
  }) = FailureState;
}
