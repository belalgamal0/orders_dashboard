import '../orders_metrics/data/model/order_model.dart';
abstract class OrderFeature {
  dynamic execute({required List<OrderModel> orders});
}
