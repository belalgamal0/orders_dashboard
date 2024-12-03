import '../../../orders_feat/order_feat_impl.dart';
import '../../data/model/order_model.dart';

class GetRetunedStatusUseCase {
  int call({required List<OrderModel> orders}) {
    StatusOrderCountFeature processor = StatusOrderCountFeature();
    int averagePrice = processor.execute(orders: orders);
    return averagePrice;
  }
}
