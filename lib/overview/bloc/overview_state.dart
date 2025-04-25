part of 'overview_bloc.dart';

@freezed
sealed class OverviewState with _$OverviewState {
  const factory OverviewState.initial({
    required DateTime date,
  }) = _InitialState;
  const factory OverviewState.loading({
    required DateTime date,
  }) = _LoadingState;
  const factory OverviewState.success({
    required DateTime date,
    @Default([]) List<FoodRecord> foodRecords,
  }) = _SuccessState;
}
