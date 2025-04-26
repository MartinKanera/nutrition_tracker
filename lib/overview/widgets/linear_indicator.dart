import 'package:flutter/material.dart';

class LinearIndicator extends StatelessWidget {
  const LinearIndicator({
    required this.value,
    required this.maxValue,
    required this.northTitle,
    this.backgroundColor = const Color(0xFFEEEEEE),
    this.height = 10.0,
    this.width = double.infinity,
    super.key,
  });

  final double value;
  final double maxValue;
  final String northTitle;
  final Color backgroundColor;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    // Calculate the progress percentage (capped between 0 and 1)
    final progress = (value / maxValue).clamp(0.0, 1.0);
    final theme = Theme.of(context);

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top label
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(northTitle,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.grey.shade600)),
              ],
            ),
          ),
          // Custom progress bar
          SizedBox(
            width: width,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(height / 2),
              child: Container(
                height: height,
                color: backgroundColor,
                child: Row(
                  children: [
                    Flexible(
                      flex: (progress * 100).round(),
                      child: Container(color: theme.colorScheme.secondary),
                    ),
                    Flexible(
                      flex: ((1 - progress) * 100).round(),
                      child: Container(color: backgroundColor.withOpacity(0.3)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Bottom label
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    '${value.toStringAsFixed(0)}/${maxValue.toStringAsFixed(0)}g',
                    style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
