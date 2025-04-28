import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_api_repository/food_api_repository.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:nutrition_tracker/app/view/app_view.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

class App extends StatelessWidget {
  const App({
    required FoodRecordRepository foodRecordRepository,
    required UserMeasurementRepository userMeasurementRepository,
    required NutritionixFoodApiRepository foodApiRepository,
    super.key,
  })  : _foodRecordRepository = foodRecordRepository,
        _userMeasurementRepository = userMeasurementRepository,
        _foodApiRepository = foodApiRepository;

  final FoodRecordRepository _foodRecordRepository;
  final UserMeasurementRepository _userMeasurementRepository;
  final NutritionixFoodApiRepository _foodApiRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _foodRecordRepository),
        RepositoryProvider.value(value: _userMeasurementRepository),
        RepositoryProvider.value(value: _foodApiRepository),
      ],
      child: const AppView(),
    );
  }
}
