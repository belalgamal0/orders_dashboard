import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../orders_metrics/domain/usecase/get_orders.dart';
import '../../../../core/services/order_service/chart_preparer.dart';
import '../../../../core/services/order_service/order_service.dart';
import '../../../orders_metrics/data/model/order_model.dart';
part 'orders_chart_bloc.freezed.dart';
part 'orders_chart_event.dart';
part 'orders_chart_state.dart';

class OrdersChartBloc extends Bloc<OrdersChartEvents, OrdersChartState> {
  final GetOrdersUseCase getOrdersUseCase;

  OrdersChartBloc({
    required this.getOrdersUseCase,
  }) : super(const OrdersChartState.initial()) {
    on<PrepareChartDataEvent>(_onGetOrders);
  }

  void _onGetOrders(
      PrepareChartDataEvent event, Emitter<OrdersChartState> emit) async {
    emit(const OrdersChartState.loading());
    final orderService = OrderService();
    final chartDataPreparer = ChartDataPreparer();
    final ordersByMonth = orderService.groupOrdersByMonth(orders: event.orders);
    final spots = chartDataPreparer.prepareChartData(ordersByMonth);
    emit(OrdersChartState.success(spots));
  }
}
