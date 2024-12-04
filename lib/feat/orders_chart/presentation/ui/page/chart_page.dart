import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import '../../../../../core/utils/device_info.dart';
import '../../bloc/orders_chart_bloc.dart';
import '../../../../../core/widgets.dart/page_header.dart';
import '../../../../orders_metrics/data/model/order_model.dart';
import '../widget/order_chart.dart';

class OrdersChartPage extends StatefulWidget {
  final List<OrderModel> orders;
  const OrdersChartPage({super.key, required this.orders});

  @override
  State<OrdersChartPage> createState() => _OrdersChartPageState();
}

class _OrdersChartPageState extends State<OrdersChartPage> {
  @override
void initState(){
  super.initState();
    if (!DeviceScreen.isWeb()) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
}
  @override
  Widget build(BuildContext context) {
    return PopScope(
     onPopInvoked: (didPop) {
        SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
     },
      child: Scaffold(
        body: BlocProvider(
          create: (_) => GetIt.instance.get<OrdersChartBloc>()
            ..add(OrdersChartEvents.prepareChartData(orders: widget.orders)),
          child: BlocBuilder<OrdersChartBloc, OrdersChartState>(
            builder: (context, state) {
              if (state.status == OrderChartStatus.loading ||
                  state.status == OrderChartStatus.initial) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.status == OrderChartStatus.success &&
                  state.orders != null) {
                return Center(
                  child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 1280),
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const PageHeader( title: 'Orders Chart', subtitle: 'Track your orders metrics and performance'),
                          const SizedBox(height: 32),
                          Expanded(child: OrderChart(spots: state.orders!)),
                        ],
                      ),
                    ),
                  ),
                );
              }
              return const Center(child: Text('No data available'));
            },
          ),
        ),
      ),
    );
  }
}
