import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_record_repository/food_record_repository.dart';
import 'package:nutrition_tracker/overview/overview.dart';

class MealSectionCard extends StatelessWidget {
  const MealSectionCard({
    required this.title,
    required this.foodRecords,
    required this.mealType,
    super.key,
  });

  final String title;
  final List<FoodRecord> foodRecords;
  final MealType mealType;

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
                        onTap: () {},
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
                      Text(
                        foodRecords.isEmpty
                            ? '0 kcal'
                            : '${foodRecords.map((r) => r.calories).reduce(
                                  (a, b) => a + b,
                                ).toStringAsFixed(0)} kcal',
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
                      key: ValueKey(foodRecord.id),
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
                                foodRecord: foodRecord,
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
                            final bloc = context.read<OverviewBloc>();
                            showModalBottomSheet<Widget>(
                              context: context,
                              builder: (context) => FoodRecordForm(
                                date: bloc.state.date,
                                mealType: mealType,
                                foodRecord: foodRecord,
                                onSubmit: (record) {
                                  bloc.add(
                                    OverviewEvent.updateFoodRecord(
                                      foodRecord: record,
                                    ),
                                  );
                                  Navigator.pop(context);
                                },
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
                                      foodRecord.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
                                    Text(
                                      '${foodRecord.grams.toStringAsFixed(0)}g',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelSmall,
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  '${foodRecord.calories.toStringAsFixed(0)} kcal',
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
