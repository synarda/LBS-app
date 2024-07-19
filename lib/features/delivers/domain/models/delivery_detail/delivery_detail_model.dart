import 'package:freezed_annotation/freezed_annotation.dart';

part 'delivery_detail_model.freezed.dart';
part 'delivery_detail_model.g.dart';

@freezed
class DeliveryDetailModel with _$DeliveryDetailModel {
  const DeliveryDetailModel._();
  const factory DeliveryDetailModel({
    required int id,
    required String name,
    required String imagePath,
    required int piece,
  }) = _DeliveryDetailModel;
  factory DeliveryDetailModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryDetailModelFromJson(json);
}
