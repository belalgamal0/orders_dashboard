import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'core/services/order_service/chart_preparer.dart';
import 'core/services/order_service/order_service.dart';
import 'feat/orders_chart/presentation/bloc/orders_chart_bloc.dart';
import 'feat/orders_feat/order_feat_impl.dart';
import 'feat/orders_metrics/domain/usecase/get_average_price.dart';
import 'feat/orders_metrics/domain/usecase/get_orders.dart';
import 'core/services/file_service/json_file_reader.dart';
import 'feat/orders_metrics/domain/usecase/get_orders_and_metrics.dart';
import 'feat/orders_metrics/domain/usecase/get_retunred_orders.dart';
import 'feat/orders_metrics/domain/usecase/get_total_orders.dart';
import 'injection_container.config.dart';
import 'feat/orders_metrics/presentation/bloc/order_bloc.dart';

@module
abstract class AppModule {
  @injectable
  OrderBloc get orderBloc;
  @injectable
  OrdersChartBloc get orderChartBloc;
  @lazySingleton
  GetOrdersUseCase get getOrdersUseCase;
  @lazySingleton
  GetTotalCountUseCase get getTotalCountUseCase;
  @lazySingleton
  GetAveragePriceUseCase get getAveragePriceUseCase;
  @lazySingleton
  FetchOrdersAndMetricsUseCase get fetchOrdersAndMetricsUseCase;
  @lazySingleton
  GetRetunedStatusUseCase get getRetunedStatusUseCase;
  @lazySingleton
  JsonFileReader get jsonFileReader;
  @lazySingleton
  OrderService get orderService;
  @factoryMethod
  StatusOrderCountFeature get statusOrderCountFeature;
  @lazySingleton
  ChartDataPreparer get chartDataPreparer;
  @lazySingleton
  TotalOrdersFeature get totalOrdersFeature;

  @lazySingleton
  AveragePriceFeature get averagePriceFeature;
}

final getIT = GetIt.instance;

@InjectableInit()
Future<void> configureDependencies() async => getIT.init();
