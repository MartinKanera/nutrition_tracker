import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';
import 'package:nutrition_tracker/overview/overview.dart';

class OverviewView extends StatelessWidget {
  const OverviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<OverviewBloc, OverviewState>(
      listener: (context, state) {
        if (state case FailureState(:final issue)) {
          if (issue == OverviewIssue.missingUserMeasurement) {
            context.go('/profile');
          }
        }
      },
      child: BlocBuilder<OverviewBloc, OverviewState>(
        buildWhen: (previous, current) => previous != current,
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: DatePicker(currentDate: state.date),
                ),
                const SizedBox(height: 16),
                Expanded(
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (state is LoadingState)
                          const Center(child: CircularProgressIndicator())
                        else if (state is SuccessState) ...[
                          DailyProgress(statistics: state.statistics),
                          const SizedBox(height: 16),
                          MealSectionCard(
                            title: context.l10n.breakfast,
                            foodRecords: state.foodGroupedByMealType[
                                    MealType.breakfast] ??
                                [],
                            mealType: MealType.breakfast,
                          ),
                          MealSectionCard(
                            title: context.l10n.morningSnack,
                            foodRecords: state.foodGroupedByMealType[
                                    MealType.morningSnack] ??
                                [],
                            mealType: MealType.morningSnack,
                          ),
                          MealSectionCard(
                            title: context.l10n.lunch,
                            foodRecords:
                                state.foodGroupedByMealType[MealType.lunch] ??
                                    [],
                            mealType: MealType.lunch,
                          ),
                          MealSectionCard(
                            title: context.l10n.afternoonSnack,
                            foodRecords: state.foodGroupedByMealType[
                                    MealType.afternoonSnack] ??
                                [],
                            mealType: MealType.afternoonSnack,
                          ),
                          MealSectionCard(
                            title: context.l10n.dinner,
                            foodRecords:
                                state.foodGroupedByMealType[MealType.dinner] ??
                                    [],
                            mealType: MealType.dinner,
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
