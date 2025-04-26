import 'dart:math';
import 'package:flutter/material.dart';

class CircularArcIndicator extends StatelessWidget {
  const CircularArcIndicator({
    required this.value,
    required this.maxValue,
    this.title,
    this.subtitle = 'Consumed',
    this.backgroundColor = const Color(0xFFEEEEEE),
    this.arcWidth = 10.0,
    super.key,
  });

  final double value;
  final double maxValue;
  final String? title;
  final String subtitle;
  final Color backgroundColor;
  final double arcWidth;

  @override
  Widget build(BuildContext context) {
    // Calculate the progress percentage (capped between 0 and 1)
    final progress = (value / maxValue).clamp(0.0, 1.0);

    return SizedBox(
      width: 150,
      height: 150,
      child: Stack(
        children: [
          // Background circle
          Center(
            child: CustomPaint(
              size: const Size(140, 140),
              painter: _CircularArcPainter(
                progress: progress,
                progressColor: Theme.of(context).colorScheme.primary,
                backgroundColor: backgroundColor,
                strokeWidth: arcWidth,
              ),
            ),
          ),
          // Center text
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title ?? value.toStringAsFixed(0),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                const SizedBox(height: 4),
                Text(subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: Colors.grey.shade600)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CircularArcPainter extends CustomPainter {
  _CircularArcPainter({
    required this.progress,
    required this.progressColor,
    required this.backgroundColor,
    required this.strokeWidth,
  });

  final double progress;
  final Color progressColor;
  final Color backgroundColor;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = min(size.width / 2, size.height / 2) - strokeWidth / 2;

    // Draw background arc (270 degrees, starting from bottom left)
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    const startAngle = 0.75 * pi;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle, // Start from bottom left (5*pi/4)
      2 * pi * 0.75, // 270 degrees (0.75 of full circle)
      false,
      backgroundPaint,
    );

    // Draw progress arc
    final progressPaint = Paint()
      ..color = progressColor
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle, // Start from bottom left (5*pi/4)
      2 * pi * 0.75 * progress, // Progress percentage of 270 degrees
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(_CircularArcPainter oldDelegate) {
    return oldDelegate.progress != progress ||
        oldDelegate.progressColor != progressColor ||
        oldDelegate.backgroundColor != backgroundColor ||
        oldDelegate.strokeWidth != strokeWidth;
  }
}
