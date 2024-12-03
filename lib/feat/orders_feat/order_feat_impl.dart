import 'package:orders_challenge/core/extensions/extensions.dart';
import '../orders_metrics/data/model/order_model.dart';
import 'order_feat.dart';

class TotalOrdersFeature implements OrderFeature {
  @override
  int execute({required List<OrderModel> orders}) {
    return orders.length;
  }
}

class AveragePriceFeature implements OrderFeature {
  @override
  double execute({required List<OrderModel> orders}) {
    if (orders.isEmpty) return 0.0;
    double totalPrice =
        orders.fold(0.0, (sum, order) => sum + order.price!.toPriceValue());
    return (totalPrice / orders.length);
  }
}

class StatusOrderCountFeature implements OrderFeature {
  @override
  int execute({required List<OrderModel> orders}) {
    return orders.where((order) => order.status == Status.RETURNED).length;
  }
}
