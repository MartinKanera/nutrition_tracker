import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:nutrition_tracker/app/view/app_view.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

class App extends StatelessWidget {
  const App({
    required FoodRecordRepository foodRecordRepository,
    required UserMeasurementRepository userMeasurementRepository,
    super.key,
  })  : _foodRecordRepository = foodRecordRepository,
        _userMeasurementRepository = userMeasurementRepository;

  final FoodRecordRepository _foodRecordRepository;
  final UserMeasurementRepository _userMeasurementRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _foodRecordRepository),
        RepositoryProvider.value(value: _userMeasurementRepository),
      ],
      child: const AppView(),
    );
  }
}
