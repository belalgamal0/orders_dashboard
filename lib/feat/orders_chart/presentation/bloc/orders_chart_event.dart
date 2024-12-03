part of 'orders_chart_bloc.dart';

@freezed
class OrdersChartEvents with _$OrdersChartEvents {
  const factory OrdersChartEvents.prepareChartData({required List<OrderModel> orders}) = PrepareChartDataEvent;
}