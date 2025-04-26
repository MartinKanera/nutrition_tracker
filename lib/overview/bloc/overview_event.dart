part of 'overview_bloc.dart';

@freezed
class OverviewEvent with _$OverviewEvent {
  const factory OverviewEvent.dayChanged(DateTime date) = _DayChanged;
}
