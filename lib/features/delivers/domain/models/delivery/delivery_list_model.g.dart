// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryListModelImpl _$$DeliveryListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryListModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imagePath: json['imagePath'] as String,
      location: LatLng.fromJson(json['location'] as Map<String, dynamic>),
      address: json['address'] as String,
      phone: json['phone'] as String,
      isDelivered: json['isDelivered'] as bool,
      shoppingChartList: (json['shoppingChartList'] as List<dynamic>)
          .map((e) => DeliveryDetailModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeliveryListModelImplToJson(
        _$DeliveryListModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imagePath': instance.imagePath,
      'location': instance.location,
      'address': instance.address,
      'phone': instance.phone,
      'isDelivered': instance.isDelivered,
      'shoppingChartList': instance.shoppingChartList,
    };
