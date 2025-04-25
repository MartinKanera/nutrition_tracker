import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:nutrition_tracker/app/view/app_view.dart';

class App extends StatelessWidget {
  const App({
    required FoodRecordRepository foodRecordRepository,
    super.key,
  }) : _foodRecordRepository = foodRecordRepository;

  final FoodRecordRepository _foodRecordRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: _foodRecordRepository),
      ],
      child: const AppView(),
    );
  }
}
