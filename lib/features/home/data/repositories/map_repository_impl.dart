import 'package:wix_navigation/features/home/data/datasource/map_service.dart';
import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';
import 'package:wix_navigation/features/home/domain/repositories/map_repository.dart';
import 'package:latlong2/latlong.dart';

class MapRepositoryImpl implements MapRepository {
  final MapService mapService;

  MapRepositoryImpl(this.mapService);

  @override
  Future<List<CalculationModel>?> getRouteDetails(String coordinates) {
    return mapService.getRouteDetails(coordinates);
  }

  @override
  Future<List<LatLng>?> getRouteCoordinates(String coordinates) {
    return mapService.getRouteCoordinates(coordinates);
  }
}
