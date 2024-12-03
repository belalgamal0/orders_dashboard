part of 'orders_chart_bloc.dart';

enum OrderChartStatus {
  initial,
  loading,
  success,
  error,
}

class OrdersChartState {
  const OrdersChartState._(
      {this.status = OrderChartStatus.initial, this.orders});

  const OrdersChartState.initial() : this._();

  const OrdersChartState.loading() : this._(status: OrderChartStatus.loading);

  const OrdersChartState.success(List<FlSpot> orders)
      : this._(status: OrderChartStatus.success, orders: orders);

  const OrdersChartState.failure() : this._(status: OrderChartStatus.error);

  final OrderChartStatus status;
  final List<FlSpot>? orders;

  OrdersChartState copyWith({
    OrderChartStatus? status,
    List<FlSpot>? orders}) {
    return OrdersChartState._(
        status: status ?? this.status,
        orders: status == OrderChartStatus.success ? orders : orders);
  }
}
