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
    print('testing');
    on<_DayChanged>(_onDayChanged);
  }

  final FoodRecordRepository foodRecordRepository;
  final UserMeasurementRepository userMeasurementRepository;

  Future<void> _onDayChanged(
    _DayChanged event,
    Emitter<OverviewState> emit,
  ) async {
    emit(state.copyWith(date: event.date));
  }
}
