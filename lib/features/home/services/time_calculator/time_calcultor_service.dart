import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:wix_navigation/core/utils/extentions.dart';
import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';
import 'package:wix_navigation/product/custom_toast.dart';

class DistanceTimeCalculator {
  Future<CalculationModel?> calculateDistanceAndTime(
      LatLng start, LatLng destination) async {
    try {
      double distance = Geolocator.distanceBetween(
        start.latitude,
        start.longitude,
        destination.latitude,
        destination.longitude,
      );

      double speed = 60.0;
      double estimatedTime = distance / speed;
      double distanceKm = distance / 1000;
      int durationMin = (estimatedTime * 60).round();

      return CalculationModel(
          text: "İlk Hedef",
          distance: "${distanceKm.formatKm()} Km",
          duration: durationMin.formatDuration());
    } catch (e) {
      showToast("Mesafe ve süre hesaplanırken bir hata oluştu");
      return null;
    }
  }
}
