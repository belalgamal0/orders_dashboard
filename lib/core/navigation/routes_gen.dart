import 'package:flutter/material.dart';
import '../../feat/orders_chart/presentation/ui/page/chart_page.dart';
import '../../feat/orders_metrics/data/model/order_model.dart';
import '../../feat/orders_metrics/presentation/ui/metrics_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MetricsPage());
      case 'ordersChart':
        final orders = settings.arguments as List<OrderModel>;

        return MaterialPageRoute(
            builder: (_) => OrdersChartPage(orders: orders));
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return Scaffold(
          appBar: AppBar(title: const Text('Error')),
          body: const Center(
            child: Text('ERROR'),
          ),
        );
      },
    );
  }
}
