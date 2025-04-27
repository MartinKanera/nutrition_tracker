part of 'overview_bloc.dart';

@freezed
class OverviewEvent with _$OverviewEvent {
  const factory OverviewEvent.dayChanged(DateTime date) = _DayChanged;
  const factory OverviewEvent.deleteFoodRecord({
    required FoodRecord foodRecord,
  }) = _DeleteFoodRecord;
  const factory OverviewEvent.updateFoodRecord({
    required FoodRecord foodRecord,
  }) = _UpdateFoodRecord;
}
