// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'orders_chart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OrdersChartEvents {
  List<OrderModel> get orders => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OrderModel> orders) prepareChartData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OrderModel> orders)? prepareChartData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OrderModel> orders)? prepareChartData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrepareChartDataEvent value) prepareChartData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrepareChartDataEvent value)? prepareChartData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrepareChartDataEvent value)? prepareChartData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrdersChartEventsCopyWith<OrdersChartEvents> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersChartEventsCopyWith<$Res> {
  factory $OrdersChartEventsCopyWith(
          OrdersChartEvents value, $Res Function(OrdersChartEvents) then) =
      _$OrdersChartEventsCopyWithImpl<$Res, OrdersChartEvents>;
  @useResult
  $Res call({List<OrderModel> orders});
}

/// @nodoc
class _$OrdersChartEventsCopyWithImpl<$Res, $Val extends OrdersChartEvents>
    implements $OrdersChartEventsCopyWith<$Res> {
  _$OrdersChartEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_value.copyWith(
      orders: null == orders
          ? _value.orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrepareChartDataEventImplCopyWith<$Res>
    implements $OrdersChartEventsCopyWith<$Res> {
  factory _$$PrepareChartDataEventImplCopyWith(
          _$PrepareChartDataEventImpl value,
          $Res Function(_$PrepareChartDataEventImpl) then) =
      __$$PrepareChartDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OrderModel> orders});
}

/// @nodoc
class __$$PrepareChartDataEventImplCopyWithImpl<$Res>
    extends _$OrdersChartEventsCopyWithImpl<$Res, _$PrepareChartDataEventImpl>
    implements _$$PrepareChartDataEventImplCopyWith<$Res> {
  __$$PrepareChartDataEventImplCopyWithImpl(_$PrepareChartDataEventImpl _value,
      $Res Function(_$PrepareChartDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$PrepareChartDataEventImpl(
      orders: null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<OrderModel>,
    ));
  }
}

/// @nodoc

class _$PrepareChartDataEventImpl
    with DiagnosticableTreeMixin
    implements PrepareChartDataEvent {
  const _$PrepareChartDataEventImpl({required final List<OrderModel> orders})
      : _orders = orders;

  final List<OrderModel> _orders;
  @override
  List<OrderModel> get orders {
    if (_orders is EqualUnmodifiableListView) return _orders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrdersChartEvents.prepareChartData(orders: $orders)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrdersChartEvents.prepareChartData'))
      ..add(DiagnosticsProperty('orders', orders));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrepareChartDataEventImpl &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrepareChartDataEventImplCopyWith<_$PrepareChartDataEventImpl>
      get copyWith => __$$PrepareChartDataEventImplCopyWithImpl<
          _$PrepareChartDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OrderModel> orders) prepareChartData,
  }) {
    return prepareChartData(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OrderModel> orders)? prepareChartData,
  }) {
    return prepareChartData?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OrderModel> orders)? prepareChartData,
    required TResult orElse(),
  }) {
    if (prepareChartData != null) {
      return prepareChartData(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PrepareChartDataEvent value) prepareChartData,
  }) {
    return prepareChartData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PrepareChartDataEvent value)? prepareChartData,
  }) {
    return prepareChartData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PrepareChartDataEvent value)? prepareChartData,
    required TResult orElse(),
  }) {
    if (prepareChartData != null) {
      return prepareChartData(this);
    }
    return orElse();
  }
}

abstract class PrepareChartDataEvent implements OrdersChartEvents {
  const factory PrepareChartDataEvent(
      {required final List<OrderModel> orders}) = _$PrepareChartDataEventImpl;

  @override
  List<OrderModel> get orders;
  @override
  @JsonKey(ignore: true)
  _$$PrepareChartDataEventImplCopyWith<_$PrepareChartDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
