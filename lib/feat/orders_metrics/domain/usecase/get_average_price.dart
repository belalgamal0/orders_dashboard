import '../../../orders_feat/order_feat_impl.dart';
import '../../data/model/order_model.dart';

class GetAveragePriceUseCase {
  final AveragePriceFeature averagePriceFeature ;
  GetAveragePriceUseCase({required this.averagePriceFeature});
  double call({required List<OrderModel> orders}) {
    if (orders.isEmpty) return 0.0;
  double averagePrice = averagePriceFeature.execute(orders:orders);
    return averagePrice;
  }
}