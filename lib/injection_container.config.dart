// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:orders_challenge/core/services/file_service/json_file_reader.dart'
    as _i437;
import 'package:orders_challenge/core/services/order_service/chart_preparer.dart'
    as _i873;
import 'package:orders_challenge/core/services/order_service/order_service.dart'
    as _i323;
import 'package:orders_challenge/feat/orders_chart/presentation/bloc/orders_chart_bloc.dart'
    as _i53;
import 'package:orders_challenge/feat/orders_feat/order_feat_impl.dart'
    as _i820;
import 'package:orders_challenge/feat/orders_metrics/data/data_source/orders_data_source.dart'
    as _i659;
import 'package:orders_challenge/feat/orders_metrics/data/repo/orders_repo_impl.dart'
    as _i420;
import 'package:orders_challenge/feat/orders_metrics/domain/repo/orders_repo.dart'
    as _i689;
import 'package:orders_challenge/feat/orders_metrics/domain/usecase/get_average_price.dart'
    as _i783;
import 'package:orders_challenge/feat/orders_metrics/domain/usecase/get_orders.dart'
    as _i319;
import 'package:orders_challenge/feat/orders_metrics/domain/usecase/get_orders_and_metrics.dart'
    as _i384;
import 'package:orders_challenge/feat/orders_metrics/domain/usecase/get_retunred_orders.dart'
    as _i262;
import 'package:orders_challenge/feat/orders_metrics/domain/usecase/get_total_orders.dart'
    as _i940;
import 'package:orders_challenge/feat/orders_metrics/presentation/bloc/order_bloc.dart'
    as _i371;
import 'package:orders_challenge/injection_container.dart' as _i1015;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule(this);
    gh.factory<_i820.StatusOrderCountFeature>(
        () => appModule.statusOrderCountFeature);
    gh.lazySingleton<_i262.GetRetunedStatusUseCase>(
        () => appModule.getRetunedStatusUseCase);
    gh.lazySingleton<_i437.JsonFileReader>(() => appModule.jsonFileReader);
    gh.lazySingleton<_i323.OrderService>(() => appModule.orderService);
    gh.lazySingleton<_i873.ChartDataPreparer>(
        () => appModule.chartDataPreparer);
    gh.lazySingleton<_i820.TotalOrdersFeature>(
        () => appModule.totalOrdersFeature);
    gh.lazySingleton<_i820.AveragePriceFeature>(
        () => appModule.averagePriceFeature);
    gh.factory<_i659.OrdersLocalDataSource>(
        () => const _i659.OrdersLocalDataSourceImpl());
    gh.factory<_i689.OrdersRepository>(() => _i420.OrdersRepositoryImpl(
        ordersLocalDataSource: gh<_i659.OrdersLocalDataSource>()));
    gh.lazySingleton<_i783.GetAveragePriceUseCase>(
        () => appModule.getAveragePriceUseCase);
    gh.lazySingleton<_i940.GetTotalCountUseCase>(
        () => appModule.getTotalCountUseCase);
    gh.lazySingleton<_i319.GetOrdersUseCase>(() => appModule.getOrdersUseCase);
    gh.factory<_i53.OrdersChartBloc>(() => appModule.orderChartBloc);
    gh.lazySingleton<_i384.FetchOrdersAndMetricsUseCase>(
        () => appModule.fetchOrdersAndMetricsUseCase);
    gh.factory<_i371.OrderBloc>(() => appModule.orderBloc);
    return this;
  }
}

class _$AppModule extends _i1015.AppModule {
  _$AppModule(this._getIt);

  final _i174.GetIt _getIt;

  @override
  _i820.StatusOrderCountFeature get statusOrderCountFeature =>
      _i820.StatusOrderCountFeature();

  @override
  _i262.GetRetunedStatusUseCase get getRetunedStatusUseCase =>
      _i262.GetRetunedStatusUseCase();

  @override
  _i437.JsonFileReader get jsonFileReader => _i437.JsonFileReader();

  @override
  _i323.OrderService get orderService => _i323.OrderService();

  @override
  _i873.ChartDataPreparer get chartDataPreparer => _i873.ChartDataPreparer();

  @override
  _i820.TotalOrdersFeature get totalOrdersFeature => _i820.TotalOrdersFeature();

  @override
  _i820.AveragePriceFeature get averagePriceFeature =>
      _i820.AveragePriceFeature();

  @override
  _i783.GetAveragePriceUseCase get getAveragePriceUseCase =>
      _i783.GetAveragePriceUseCase(
          averagePriceFeature: _getIt<_i820.AveragePriceFeature>());

  @override
  _i940.GetTotalCountUseCase get getTotalCountUseCase =>
      _i940.GetTotalCountUseCase(
          totalOrdersFeature: _getIt<_i820.TotalOrdersFeature>());

  @override
  _i319.GetOrdersUseCase get getOrdersUseCase =>
      _i319.GetOrdersUseCase(_getIt<_i689.OrdersRepository>());

  @override
  _i53.OrdersChartBloc get orderChartBloc =>
      _i53.OrdersChartBloc(getOrdersUseCase: _getIt<_i319.GetOrdersUseCase>());

  @override
  _i384.FetchOrdersAndMetricsUseCase get fetchOrdersAndMetricsUseCase =>
      _i384.FetchOrdersAndMetricsUseCase(
        getOrdersUseCase: _getIt<_i319.GetOrdersUseCase>(),
        getTotalCountUseCase: _getIt<_i940.GetTotalCountUseCase>(),
        getAveragePriceUseCase: _getIt<_i783.GetAveragePriceUseCase>(),
        getRetunedStatusUseCase: _getIt<_i262.GetRetunedStatusUseCase>(),
      );

  @override
  _i371.OrderBloc get orderBloc => _i371.OrderBloc(
      fetchOrdersAndMetricsUseCase:
          _getIt<_i384.FetchOrdersAndMetricsUseCase>());
}
