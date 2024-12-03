
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/order_bloc.dart';
import 'metric_card.dart';
import 'metric_data.dart';
import '../../../../../core/extensions/extensions.dart';

class MetricsGrid extends StatelessWidget {
  const MetricsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final metricsState = context.read<OrderBloc>().state;

    final metrics = [
      MetricData(
        title: 'Total Orders',
        value: metricsState.totalCount.toString(),
        trend: 12.5,
        icon: Icons.inventory_2_outlined,
      ),
      MetricData(
        title: 'Average Order Price',
        value: '\$${metricsState.averagePrice!.formatToTwoDecimals()}',
        trend: 3.2,
        icon: Icons.attach_money_outlined,
      ),
      MetricData(
        title: 'Returns',
        value: metricsState.returnedCount.toString(),
        trend: -5.8,
        icon: Icons.replay_outlined,
      ),
    ];

    return LayoutBuilder(
      builder: (context, constraints) {
        final crossAxisCount = _getCrossAxisCount(constraints);

        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
            childAspectRatio: 1.5,
          ),
          itemCount: metrics.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return MetricCard(data: metrics[index]);
          },
        );
      },
    );
  }

  int _getCrossAxisCount(BoxConstraints constraints) {
    if (constraints.maxWidth > 1200) return 3;
    if (constraints.maxWidth > 768) return 2;
    if (constraints.maxWidth > 480) return 1;
    return 1;
  }
}
