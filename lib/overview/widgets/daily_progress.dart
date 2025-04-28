import 'package:flutter/material.dart';
import 'package:nutrition_tracker/l10n/l10n.dart';
import 'package:nutrition_tracker/overview/bloc/overview_bloc.dart';
import 'package:nutrition_tracker/overview/widgets/widgets.dart';

class DailyProgress extends StatelessWidget {
  const DailyProgress({required OverviewStatistics? statistics, super.key})
      : _statistics = statistics;

  final OverviewStatistics? _statistics;

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
                        value: _statistics?.consumedCalories ?? 0,
                        maxValue: _statistics?.expectedCalories ?? 1,
                        subtitle: context.l10n.calories,
                      ),
                    ],
                  ),
                  Row(
                    spacing: 12,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LinearIndicator(
                        value: _statistics?.consumedProtein ?? 0,
                        maxValue: _statistics?.expectedProtein ?? 1,
                        northTitle: context.l10n.protein,
                      ),
                      LinearIndicator(
                        value: _statistics?.consumedCarbs ?? 0,
                        maxValue: _statistics?.expectedCarbs ?? 1,
                        northTitle: context.l10n.carbohydrates,
                      ),
                      LinearIndicator(
                        value: _statistics?.consumedFat ?? 0,
                        maxValue: _statistics?.expectedFat ?? 1,
                        northTitle: context.l10n.fats,
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  Row(
                    spacing: 12,
                    children: [
                      LinearIndicator(
                        value: _statistics?.consumedSaturatedFat ?? 0,
                        maxValue: _statistics?.expectedSaturatedFat ?? 1,
                        northTitle: context.l10n.saturatedFats,
                      ),
                      LinearIndicator(
                        value: _statistics?.consumedFiber ?? 0,
                        maxValue: _statistics?.expectedFiber ?? 1,
                        northTitle: context.l10n.fiber,
                      ),
                      LinearIndicator(
                        value: _statistics?.consumedSugars ?? 0,
                        maxValue: _statistics?.expectedSugars ?? 1,
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
