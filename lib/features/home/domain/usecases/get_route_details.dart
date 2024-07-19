import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';
import 'package:wix_navigation/features/home/domain/repositories/map_repository.dart';
import 'package:latlong2/latlong.dart';

class GetRouteDetails {
  final MapRepository repository;

  GetRouteDetails(this.repository);

  Future<List<CalculationModel>?> call(List<LatLng> wayPoints) async {
    String coordinates = wayPoints
        .map((point) => '${point.longitude},${point.latitude}')
        .join(';');
    return await repository.getRouteDetails(coordinates);
  }

  Future<List<LatLng>?> getRouteCoordinates(List<LatLng> wayPoints) async {
    String coordinates = wayPoints
        .map((point) => '${point.longitude},${point.latitude}')
        .join(';');
    return await repository.getRouteCoordinates(coordinates);
  }
}
