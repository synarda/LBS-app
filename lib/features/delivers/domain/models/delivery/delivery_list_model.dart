import 'package:latlong2/latlong.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery_detail/delivery_detail_model.dart';

part 'delivery_list_model.freezed.dart';
part 'delivery_list_model.g.dart';

@freezed
class DeliveryListModel with _$DeliveryListModel {
  const DeliveryListModel._();
  const factory DeliveryListModel({
    required int id,
    required String name,
    required String imagePath,
    required LatLng location,
    required String address,
    required String phone,
    required bool isDelivered,
    required List<DeliveryDetailModel> shoppingChartList,
  }) = _DeliveryListModel;

  factory DeliveryListModel.fromJson(Map<String, dynamic> json) =>
      _$DeliveryListModelFromJson(json);
}
