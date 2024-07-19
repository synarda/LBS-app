import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:wix_navigation/core/utils/errors.dart';
import 'package:wix_navigation/features/delivers/domain/models/delivery/delivery_list_model.dart';
import 'package:wix_navigation/features/home/data/datasource/map_service.dart';
import 'package:wix_navigation/features/home/data/repositories/map_repository_impl.dart';
import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';
import 'package:wix_navigation/features/home/services/background/background_service.dart';
import 'package:wix_navigation/features/home/services/time_calculator/time_calcultor_service.dart';
import 'package:wix_navigation/features/home/domain/usecases/get_route_details.dart';
import 'package:wix_navigation/product/custom_toast.dart';

class NavigationProvider extends ChangeNotifier {
  final GetRouteDetails getRouteDetails;
  final DistanceTimeCalculator calculatorService;
  final NavigationBackgroundHandler backgroundHandler;
  MapController mapController = MapController();
  List<LatLng> routeCoords = [];
  List<CalculationModel> calculationsList = [];
  bool calculateIsStart = false;
  Timer? timer;
  Position? currentPosition;
  StreamSubscription<Position>? _positionStreamSubscription;

  NavigationProvider(
      this.getRouteDetails, this.calculatorService, this.backgroundHandler);

  //Create Route Path
  // we take our current position and add it to the first of the stations.
  // we get a path between these coordinates from the api query respectively
  // we draw our route on the screen by assigning the incoming path to the [$routeCoords] list.
  // we assign the incoming data for calculation to the calculation list
  // Finally, we zoom in on the map and send a live listenable notification.
  Future<void> getRoute(
      List<DeliveryListModel> stations, LatLng myPosition) async {
    calculationsList.clear();
    List<LatLng> wayPoints = [myPosition] +
        stations
            .map((s) => LatLng(s.location.latitude, s.location.longitude))
            .toList();
    try {
      final resulCalculationsList = (await getRouteDetails.call(wayPoints));
      final resultRouteCoords =
          await getRouteDetails.getRouteCoordinates(wayPoints);
      if (resulCalculationsList != null) {
        calculationsList = resulCalculationsList;
      }
      if (resultRouteCoords != null) {
        routeCoords = resultRouteCoords;
      }
      mapController.move(myPosition, 13);
      startForegroundTask(myPosition, stations.first.location);
      notifyListeners();
    } catch (e) {
      showToast(unknownError);
    }
  }

  // We update the location coordinates, which are constantly updated,
  // every 3 seconds and notify the user about the calculations.
  void updateNotification(Position myPosition, LatLng calculatePosition) async {
    timer?.cancel();
    timer = Timer.periodic(const Duration(seconds: 3), (t) async {
      final latitude = currentPosition?.latitude ?? myPosition.latitude;
      final longitude = currentPosition?.longitude ?? myPosition.longitude;
      final result = await calculatorService.calculateDistanceAndTime(
          LatLng(latitude, longitude), calculatePosition);
      backgroundHandler.updateService(result!, timer);
    });
  }

  //  For notifications, we init my ForeGroundTask manager and then throw the startup notification.
  //  Attention, if we don't throw this, our updateService method will not work
  void startForegroundTask(LatLng myPosition, LatLng firstStation) {
    if (calculateIsStart) return;
    backgroundHandler.startService(
        LatLng(myPosition.latitude, myPosition.longitude),
        firstStation,
        calculationsList.first);
    calculateIsStart = true;
  }

  //  The method where we listen to our location information updated
  //  every three seconds in the UpdateService method
  void startStreamLocation(Position defaultPosition) {
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    Geolocator.getPositionStream(locationSettings: locationSettings)
        .listen((Position? positionStream) {
      currentPosition = positionStream ?? defaultPosition;
    });
  }

  // Stop Stream Location
  void stopStreamLocation() {
    calculateIsStart = false;
    _positionStreamSubscription?.cancel();
    backgroundHandler.stopService();
    notifyListeners();
  }

  // method to view the drawn path by zooming out to the center
  // of the entire path for better visibility
  void moveRouteCenter() {
    if (routeCoords.isNotEmpty) {
      double avgLat =
          routeCoords.map((e) => e.latitude).reduce((a, b) => a + b) /
              routeCoords.length;
      double avgLon =
          routeCoords.map((e) => e.longitude).reduce((a, b) => a + b) /
              routeCoords.length;
      double maxDistance = routeCoords
          .map((e) => (e.latitude - avgLat).abs() > (e.longitude - avgLon).abs()
              ? (e.latitude - avgLat).abs()
              : (e.longitude - avgLon).abs())
          .reduce((a, b) => a > b ? a : b);

      if (maxDistance == 0) {
        maxDistance = 1;
      }
      double zoomLevel = 12 - maxDistance.clamp(0, 14).toDouble();
      zoomLevel = zoomLevel.isFinite ? zoomLevel : 14;
      mapController.move(LatLng(avgLat, avgLon), zoomLevel);
    }
  }

  // Method to find our own position
  void findMyPosition(Position? myPosition) {
    final latitude = myPosition?.latitude ?? 38.4192;
    final longitude = myPosition?.longitude ?? 27.1287;
    mapController.move(LatLng(latitude, longitude), 15);
  }
}

final navigationProvider = ChangeNotifierProvider((ref) {
  final getRouteDetails = GetRouteDetails(MapRepositoryImpl(MapService()));
  final calculatorService = DistanceTimeCalculator();
  final backgroundHandler = NavigationBackgroundHandler();
  return NavigationProvider(
      getRouteDetails, calculatorService, backgroundHandler);
});
