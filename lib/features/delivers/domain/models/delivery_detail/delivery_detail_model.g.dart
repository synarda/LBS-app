// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delivery_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeliveryDetailModelImpl _$$DeliveryDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeliveryDetailModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imagePath: json['imagePath'] as String,
      piece: (json['piece'] as num).toInt(),
    );

Map<String, dynamic> _$$DeliveryDetailModelImplToJson(
        _$DeliveryDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imagePath': instance.imagePath,
      'piece': instance.piece,
    };
