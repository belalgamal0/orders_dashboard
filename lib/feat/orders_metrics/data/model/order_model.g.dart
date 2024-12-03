// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderModelImpl _$$OrderModelImplFromJson(Map<String, dynamic> json) =>
    _$OrderModelImpl(
      id: json['id'] as String?,
      isActive: json['isActive'] as bool?,
      price: json['price'] as String?,
      company: json['company'] as String?,
      picture: json['picture'] as String?,
      buyer: json['buyer'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: $enumDecodeNullable(_$StatusEnumMap, json['status']),
      registered: json['registered'] as String?,
    );

Map<String, dynamic> _$$OrderModelImplToJson(_$OrderModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'isActive': instance.isActive,
      'price': instance.price,
      'company': instance.company,
      'picture': instance.picture,
      'buyer': instance.buyer,
      'tags': instance.tags,
      'status': _$StatusEnumMap[instance.status],
      'registered': instance.registered,
    };

const _$StatusEnumMap = {
  Status.DELIVERED: 'DELIVERED',
  Status.ORDERED: 'ORDERED',
  Status.RETURNED: 'RETURNED',
};
