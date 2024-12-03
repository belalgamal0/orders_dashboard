import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/model/order_model.dart';
import '../../domain/usecase/get_orders_and_metrics.dart';
part 'order_bloc.freezed.dart';
part 'order_event.dart';
part 'order_state.dart';

class OrderBloc extends Bloc<OrderEvents, OrderState> {
  final FetchOrdersAndMetricsUseCase fetchOrdersAndMetricsUseCase;

  OrderBloc({
    required this.fetchOrdersAndMetricsUseCase,
  }) : super(const OrderState.initial()) {
    on<GetOrdersEvent>(_onGetOrders);
  }

  void _onGetOrders(GetOrdersEvent event, Emitter<OrderState> emit) async {
    emit(const OrderState.loading());
    final result = await fetchOrdersAndMetricsUseCase();

    result.fold(
      (failure) => emit(const OrderState.failure()),
      (data) => emit(OrderState.success(
        data.orders,
        data.totalCount,
        data.returnedCount,
        data.averagePrice,
      )),
    );
  }
}

class LoadedStateData {
  final List<OrderModel> orders;
  final int totalCount;
  final int returnedCount;
  final double averagePrice;

  LoadedStateData({
    required this.orders,
    required this.totalCount,
    required this.returnedCount,
    required this.averagePrice,
  });
}
