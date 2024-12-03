import '../../../../core/failure/failure.dart';
import '../../data/model/order_model.dart';
import 'package:dartz/dartz.dart';
abstract class OrdersRepository {
  Future<Either<Failure, List<OrderModel>>> getOrders();
}