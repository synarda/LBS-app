import 'dart:async';

import 'package:latlong2/latlong.dart';
import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';

abstract class BackgroundHandler {
  void startService(LatLng myPosition, LatLng firstStation,
      CalculationModel calculatePosition);
  void updateService(CalculationModel calculatePosition, Timer timer);
  void stopService();
}
