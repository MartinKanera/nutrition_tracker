import 'package:flutter/material.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';
import 'package:nutrition_tracker/overview/bloc/overview_bloc.dart';
import 'package:nutrition_tracker/overview/widgets/widgets.dart';

class DailyProgress extends StatelessWidget {
  const DailyProgress({required OverviewStatistics statistics, super.key})
      : _statistics = statistics;

  final OverviewStatistics _statistics;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox(
          width: constraints.maxWidth,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Calories indicator
                      CircularArcIndicator(
                        value: _statistics.consumedCalories,
                        maxValue: _statistics.expectedCalories,
                        subtitle: context.l10n.calories,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LinearIndicator(
                        value: _statistics.consumedProtein,
                        maxValue: _statistics.expectedProtein,
                        northTitle: context.l10n.protein,
                      ),
                      LinearIndicator(
                        value: _statistics.consumedCarbs,
                        maxValue: _statistics.expectedCarbs,
                        northTitle: context.l10n.carbohydrates,
                      ),
                      LinearIndicator(
                        value: _statistics.consumedFat,
                        maxValue: _statistics.expectedFat,
                        northTitle: context.l10n.fats,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    spacing: 12,
                    children: [
                      LinearIndicator(
                        value: _statistics.consumedSaturatedFat,
                        maxValue: _statistics.expectedSaturatedFat,
                        northTitle: context.l10n.saturatedFats,
                      ),
                      LinearIndicator(
                        value: _statistics.consumedFiber,
                        maxValue: _statistics.expectedFiber,
                        northTitle: context.l10n.fiber,
                      ),
                      LinearIndicator(
                        value: _statistics.consumedSugars,
                        maxValue: _statistics.expectedSugars,
                        northTitle: context.l10n.sugars,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
