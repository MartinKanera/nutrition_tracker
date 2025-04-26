part of 'overview_bloc.dart';

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
    @Default([]) List<FoodRecord> foodRecords,
  }) = SuccessState;
}
