import 'package:bloc/bloc.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'overview_event.dart';
part 'overview_state.dart';
part 'overview_bloc.freezed.dart';

class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  // Set initial state to today
  OverviewBloc() : super(OverviewState.initial(date: DateTime.now()));
}
