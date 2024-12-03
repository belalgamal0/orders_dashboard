part of 'order_bloc.dart';

@freezed
class OrderEvents with _$OrderEvents {
  const factory OrderEvents.getOrders() = GetOrdersEvent;
}
