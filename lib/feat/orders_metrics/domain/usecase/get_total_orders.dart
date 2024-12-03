import '../../../orders_feat/order_feat_impl.dart';
import '../../data/model/order_model.dart';

class GetTotalCountUseCase {
  final TotalOrdersFeature totalOrdersFeature;
  GetTotalCountUseCase({required this.totalOrdersFeature});

  int call({required List<OrderModel> orders}) {
    int totalOrders = totalOrdersFeature.execute(orders: orders);
    return totalOrders;
  }
}
