import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';
import 'package:latlong2/latlong.dart';

abstract class MapRepository {
  Future<List<CalculationModel>?> getRouteDetails(String coordinates);
  Future<List<LatLng>?> getRouteCoordinates(String coordinates);
}
