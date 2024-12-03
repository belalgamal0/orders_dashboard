import 'package:fl_chart/fl_chart.dart';

abstract class IChartDataPreparer {
  List<FlSpot> prepareChartData(Map<String, int> ordersByMonth);
}

class ChartDataPreparer implements IChartDataPreparer {
  @override
  List<FlSpot> prepareChartData(Map<String, int> ordersByMonth) {
    return ordersByMonth.entries.map((entry) => FlSpot(DateTime.parse("${entry.key}-01").month.toDouble(), entry.value.toDouble())).toList();
  }
}