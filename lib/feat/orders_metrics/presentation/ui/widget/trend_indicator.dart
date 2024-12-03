import 'package:flutter/material.dart';

class TrendIndicator extends StatelessWidget {
  final double trend;

  const TrendIndicator({
    super.key,
    required this.trend,
  });

  @override
  Widget build(BuildContext context) {
    final isPositive = trend >= 0;
    final color = isPositive ? Colors.green[600] : Colors.red[600];

    return Row(
      children: [
        Text(
          '${isPositive ? '+' : ''}$trend%',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: color,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(width: 4),
        Text(
          'vs last month',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}