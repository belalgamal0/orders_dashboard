import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/failure/failure.dart';
import '../model/order_model.dart';
import '../../domain/repo/orders_repo.dart';
import '../data_source/orders_data_source.dart';

@Injectable(as: OrdersRepository)
class OrdersRepositoryImpl implements OrdersRepository {
  final OrdersLocalDataSource ordersLocalDataSource;
  OrdersRepositoryImpl(
      {required this.ordersLocalDataSource});
  @override
  Future<Either<Failure, List<OrderModel>>> getOrders(
      ) async {
    return await _getOrdersRemote();
  }

  Future<Either<Failure, List<OrderModel>>> _getOrdersRemote() async {
      try {
        final loadOrders =
            await ordersLocalDataSource.getOrders();
        return Right(loadOrders);
      } on ServerFailure {
        return Left(ServerFailure(''));
      }
    }
  }

