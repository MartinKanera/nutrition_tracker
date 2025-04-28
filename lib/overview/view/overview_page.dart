import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_api_repository/food_api_repository.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:nutrition_tracker/extensions/date_time_extensions.dart';
import 'package:nutrition_tracker/overview/bloc/overview_bloc.dart';
import 'package:nutrition_tracker/overview/view/overview_view.dart';
import 'package:user_measurement_repository/user_measurement_repository.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OverviewBloc(
        foodRecordRepository: context.read<FoodRecordRepository>(),
        userMeasurementRepository: context.read<UserMeasurementRepository>(),
        nutritionixFoodApiRepository: context.read<NutritionixFoodApiRepository>(),
      )..add(
          OverviewEvent.dayChanged(DateTimeExtensions.todayStripped()),
        ),
      child: const OverviewView(),
    );
  }
}
