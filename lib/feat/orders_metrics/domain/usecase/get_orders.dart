
import 'package:dartz/dartz.dart';
import '../../../../core/failure/failure.dart';
import '../../data/model/order_model.dart';
import '../repo/orders_repo.dart';

class GetOrdersUseCase {
  final OrdersRepository _repository;

  GetOrdersUseCase(this._repository);

  Future<Either<Failure, List<OrderModel>>> call() async {
    return await _repository.getOrders();
  }
}
