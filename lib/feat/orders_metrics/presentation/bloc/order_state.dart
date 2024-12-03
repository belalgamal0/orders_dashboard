part of 'order_bloc.dart';

enum OrderStatus {
  initial,
  loading,
  success,
  error,
}

class OrderState {
  const OrderState._(
      {this.status = OrderStatus.initial,
      this.orders,
      this.totalCount,
      this.averagePrice,
      this.returnedCount});

  const OrderState.initial() : this._();

  const OrderState.loading() : this._(status: OrderStatus.loading);

  const OrderState.success(List<OrderModel> orders, int totalCount,
      int returnedCount, double averagePrice)
      : this._(
            status: OrderStatus.success,
            orders: orders,
            averagePrice: averagePrice,
            totalCount: totalCount,
            returnedCount: returnedCount);

  const OrderState.failure() : this._(status: OrderStatus.error);

  final OrderStatus status;
  final int? totalCount;
  final int? returnedCount;
  final double? averagePrice;
  final List<OrderModel>? orders;

  OrderState copyWith({
    OrderStatus? status,
    List<OrderModel>? orders,
    int? totalCount,
    int? returnedCount,
    double? averagePrice,
  }) {
    return OrderState._(
        status: status ?? this.status,
        orders: status == OrderStatus.success ? orders : orders,
        averagePrice: averagePrice,
        totalCount: totalCount,
        returnedCount: returnedCount);
  }
}
