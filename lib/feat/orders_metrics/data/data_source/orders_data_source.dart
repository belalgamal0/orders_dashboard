import 'dart:async';
import 'package:injectable/injectable.dart';
import '../model/order_model.dart';
import '../../../../core/services/file_service/json_file_reader.dart';

abstract class OrdersLocalDataSource {
  Future<List<OrderModel>> getOrders();
}

@Injectable(as: OrdersLocalDataSource)
class OrdersLocalDataSourceImpl implements OrdersLocalDataSource {
  const OrdersLocalDataSourceImpl();

  @override
  Future<List<OrderModel>> getOrders() async {
    JsonFileReader fileReader = JsonFileReader();
    List? jsonData = await fileReader.readAsArray( filePath:'assets/orders.json');
    List<OrderModel> orders = [];
    Iterable l = jsonData;
    orders = List<OrderModel>.from(l.map((model) => OrderModel.fromJson(model)));
    return orders;
  }
}