import 'package:freezed_annotation/freezed_annotation.dart';
part 'order_model.freezed.dart';
part 'order_model.g.dart';

@freezed
class OrderModel with _$OrderModel {
    const factory OrderModel({
        @JsonKey(name: "id")
        String? id,
        @JsonKey(name: "isActive")
        bool? isActive,
        @JsonKey(name: "price")
        String? price,
        @JsonKey(name: "company")
        String? company,
        @JsonKey(name: "picture")
        String? picture,
        @JsonKey(name: "buyer")
        String? buyer,
        @JsonKey(name: "tags")
        List<String>? tags,
        @JsonKey(name: "status")
        Status? status,
        @JsonKey(name: "registered")
        String? registered,
    }) = _OrderModel;

    factory OrderModel.fromJson(Map<String, dynamic> json) => _$OrderModelFromJson(json);
}

enum Status {
    @JsonValue("DELIVERED")
    DELIVERED,
    @JsonValue("ORDERED")
    ORDERED,
    @JsonValue("RETURNED")
    RETURNED
}
