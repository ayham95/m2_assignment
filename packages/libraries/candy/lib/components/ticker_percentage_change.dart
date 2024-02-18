import 'package:candy/candy.dart';
import 'package:flutter/material.dart';

class TickerPercentageChange extends StatelessWidget {
  final String percentage;

  const TickerPercentageChange({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    final negative = percentage.startsWith('-');
    return AnimatedContainer(
      duration: fastAnimationDuration,
      decoration: BoxDecoration(
        color: negative ? Colors.red.withAlpha(70) : Colors.green.withAlpha(70),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: negative
          ? _NegativePercentage(percentage: percentage)
          : _PositivePercentage(percentage: percentage),
    );
  }
}

class _NegativePercentage extends StatelessWidget {
  final String percentage;

  const _NegativePercentage({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${percentage.substring(0, 5)}%',
      style: const TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );
  }
}

class _PositivePercentage extends StatelessWidget {
  final String percentage;

  const _PositivePercentage({super.key, required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Text(
      '+${percentage.substring(0, 4)}%',
      style: const TextStyle(
        color: Colors.green,
        fontWeight: FontWeight.bold,
        fontSize: 12,
      ),
    );
  }
}
