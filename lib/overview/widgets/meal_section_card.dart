import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_api_repository/food_api_repository.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:nutrition_tracker/overview/overview.dart';
import 'package:nutrition_tracker/search_food/bloc/search_food_bloc.dart';
import 'package:nutrition_tracker/search_food/view/search_food_view.dart';
import 'package:skeletonizer/skeletonizer.dart';

class MealSectionCard extends StatelessWidget {
  const MealSectionCard({
    required this.title,
    required this.mealType,
    required this.isLoading,
    this.foodRecords = const [],
    super.key,
  });

  final String title;
  final List<FoodRecordWithNutrition> foodRecords;
  final MealType mealType;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          final currentDate =
                              context.read<OverviewBloc>().state.date;
                          showModalBottomSheet<Widget>(
                            context: context,
                            isScrollControlled: true,
                            builder: (context) => BlocProvider(
                              create: (context) => SearchFoodBloc(
                                nutritionixFoodApiRepository: context
                                    .read<NutritionixFoodApiRepository>(),
                              ),
                              child: SearchFoodView(
                                mealType: mealType,
                                date: currentDate,
                              ),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.add_circle_outline_rounded,
                          size: 24,
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        title,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      const Spacer(),
                      Skeletonizer(
                        enabled: isLoading,
                        child: Text(
                          foodRecords.isEmpty
                              ? '0 kcal'
                              : '${foodRecords.map((r) => r.nutrients.calories).reduce(
                                    (a, b) => a + b,
                                  ).toStringAsFixed(0)} kcal',
                        ),
                      ),
                    ],
                  ),
                ),
                if (foodRecords.isNotEmpty) ...[
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Divider(),
                  ),
                  ...foodRecords.asMap().entries.map((entry) {
                    final index = entry.key;
                    final foodRecord = entry.value;
                    final isLastItem = index == foodRecords.length - 1;
                    return Dismissible(
                      key: ValueKey(foodRecord.record.id),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: isLastItem
                              ? const BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                )
                              : null,
                        ),
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 8,
                        ),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      onDismissed: (_) {
                        context.read<OverviewBloc>().add(
                              OverviewEvent.deleteFoodRecord(
                                foodRecord: foodRecord.record,
                              ),
                            );
                      },
                      child: Material(
                        color: Theme.of(context).cardTheme.color,
                        // Apply rounded corners only to the last item
                        shape: isLastItem
                            ? const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(16),
                                  bottomRight: Radius.circular(16),
                                ),
                              )
                            : null,
                        clipBehavior: isLastItem ? Clip.antiAlias : Clip.none,
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet<Widget>(
                              context: context,
                              builder: (context) => FoodRecordForm(
                                foodRecordWithNutrients: foodRecord,
                              ),
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 16),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      foodRecord.nutrients.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    Text(
                                      '${foodRecord.record.grams.toStringAsFixed(0)}g',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  '${foodRecord.nutrients.calories.toStringAsFixed(0)} kcal',
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              ],
            ),
          ),
        );
      },
    );
  }
}
