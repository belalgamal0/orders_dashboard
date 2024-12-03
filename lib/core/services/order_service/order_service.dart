import 'dart:collection';
import 'package:intl/intl.dart';
import '../../../feat/orders_metrics/data/model/order_model.dart';

abstract class IOrderService {
  Map<String, int> groupOrdersByMonth({required List<OrderModel> orders});
}

class OrderService implements IOrderService {
  @override
  Map<String, int> groupOrdersByMonth({required List<OrderModel> orders}) {
    final groupedOrders = <String, int>{};

    for (var order in orders) {
      final DateTime date = DateTime.parse(order.registered!);
      final formattedMonth = DateFormat('yyyy-MM').format(date);

      groupedOrders[formattedMonth] = (groupedOrders[formattedMonth] ?? 0) + 1;
    }

    final sortedGroupedOrders = SplayTreeMap<String, int>(
      (a, b) => DateTime.parse("$a-01").compareTo(DateTime.parse("$b-01")),
    );

    sortedGroupedOrders.addAll(groupedOrders);
    return sortedGroupedOrders;
  }
}
