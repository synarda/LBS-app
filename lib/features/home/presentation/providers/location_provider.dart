import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:wix_navigation/core/utils/errors.dart';
import 'package:wix_navigation/product/custom_toast.dart';

class LocationNotifier extends StateNotifier<AsyncValue<Position?>> {
  Position? _currentPosition;

  LocationNotifier() : super(const AsyncValue.loading()) {
    _initialize();
  }

  Future<void> _initialize() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check Location Service is Enable
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      showToast(ifPermissionIsNot);
      return;
    }

    if (await Permission.location.isDenied) {
      final status = await Permission.location.request();
      if (status.isDenied) {
        return;
      }
    }

    //Check Location Permission
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        showToast(ifPermissionIsNot);
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      showToast(ifPermissionIsNot);
      return;
    }

    //Get my location for once
    _currentPosition = await Geolocator.getCurrentPosition();
    state = AsyncValue.data(_currentPosition);

    //Listen my location data
    Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 10,
      ),
    ).listen((Position position) {
      _currentPosition = position;
      state = AsyncValue.data(position);
    });
  }

  Position? get currentPosition => _currentPosition;
}

final locationProvider =
    StateNotifierProvider<LocationNotifier, AsyncValue<Position?>>((ref) {
  return LocationNotifier();
});
