import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:go_router/go_router.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';
import 'package:nutrition_tracker/overview/overview.dart';
import 'package:skeletonizer/skeletonizer.dart';

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
                        Skeletonizer(
                          enabled: state is LoadingState,
                          child: DailyProgress(
                              statistics: state is SuccessState
                                  ? state.statistics
                                  : null),
                        ),
                        const SizedBox(height: 16),
                        MealSectionCard(
                          isLoading: state is LoadingState,
                          title: context.l10n.breakfast,
                          foodRecords: state is SuccessState
                              ? state.foodGroupedByMealType[MealType.breakfast]!
                              : const [],
                          mealType: MealType.breakfast,
                        ),
                        MealSectionCard(
                          isLoading: state is LoadingState,
                          title: context.l10n.morningSnack,
                          foodRecords: state is SuccessState
                              ? state
                                  .foodGroupedByMealType[MealType.morningSnack]!
                              : const [],
                          mealType: MealType.morningSnack,
                        ),
                        MealSectionCard(
                          isLoading: state is LoadingState,
                          title: context.l10n.lunch,
                          foodRecords: state is SuccessState
                              ? state.foodGroupedByMealType[MealType.lunch]!
                              : const [],
                          mealType: MealType.lunch,
                        ),
                        MealSectionCard(
                          isLoading: state is LoadingState,
                          title: context.l10n.afternoonSnack,
                          foodRecords: state is SuccessState
                              ? state.foodGroupedByMealType[
                                  MealType.afternoonSnack]!
                              : const [],
                          mealType: MealType.afternoonSnack,
                        ),
                        MealSectionCard(
                          isLoading: state is LoadingState,
                          title: context.l10n.dinner,
                          foodRecords: state is SuccessState
                              ? state.foodGroupedByMealType[MealType.dinner]!
                              : const [],
                          mealType: MealType.dinner,
                        ),
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
