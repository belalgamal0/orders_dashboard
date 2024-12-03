import 'package:get_it/get_it.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets.dart/page_header.dart';
import 'widget/view_chart_button.dart';
import 'widget/metrics_grid.dart';
import '../bloc/order_bloc.dart';

class MetricsPage extends StatelessWidget {
  const MetricsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (_) =>
          GetIt.instance.get<OrderBloc>()..add(const GetOrdersEvent()),
      child: BlocListener<OrderBloc, OrderState>(
        listener: (BuildContext context, state) {},
        child: BlocBuilder<OrderBloc, OrderState>(
          buildWhen: (previous, current) => previous != current,
          builder: (context, state) {
            if (state.status == OrderStatus.initial) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.status == OrderStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else {
              final metricsState = context.read<OrderBloc>().state;
              return SingleChildScrollView(
                child: Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1280),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PageHeader(title: 'Orders Metrics', subtitle: 'Track your orders metrics and performance'),
                          const SizedBox(height: 32),
                          const MetricsGrid(),
                          ViewChartButton(onPressed: () {
                            Navigator.pushNamed(
                              context,
                              'ordersChart',
                              arguments: metricsState.orders!,
                            );
                          }),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }
          },
        ),
      ),
    ));
  }
}
