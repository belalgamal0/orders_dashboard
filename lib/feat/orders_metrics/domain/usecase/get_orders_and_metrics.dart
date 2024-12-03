import 'package:dartz/dartz.dart';

import '../../../../core/failure/failure.dart';
import '../../presentation/bloc/order_bloc.dart';
import 'get_average_price.dart';
import 'get_orders.dart';
import 'get_retunred_orders.dart';
import 'get_total_orders.dart';

class FetchOrdersAndMetricsUseCase {
  final GetOrdersUseCase getOrdersUseCase;
  final GetTotalCountUseCase getTotalCountUseCase;
  final GetAveragePriceUseCase getAveragePriceUseCase;
  final GetRetunedStatusUseCase getRetunedStatusUseCase;

  FetchOrdersAndMetricsUseCase({
    required this.getOrdersUseCase,
    required this.getTotalCountUseCase,
    required this.getAveragePriceUseCase,
    required this.getRetunedStatusUseCase,
  });

  Future<Either<Failure, LoadedStateData>> call() async {
    final ordersResult = await getOrdersUseCase();
    return ordersResult.map((orders) {
      final totalCount = getTotalCountUseCase(orders:orders);
      final averagePrice = getAveragePriceUseCase(orders:orders);
      final returnedCount = getRetunedStatusUseCase(orders:orders);
      return LoadedStateData(
        orders: orders,
        totalCount: totalCount,
                returnedCount:returnedCount
,
        averagePrice: averagePrice,
      );
    });
  }
}