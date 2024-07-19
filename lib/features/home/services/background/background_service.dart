import 'dart:async';

import 'package:flutter_foreground_task/flutter_foreground_task.dart';
import 'package:latlong2/latlong.dart';
import 'package:wix_navigation/features/home/domain/models/calculation_model.dart';
import 'package:wix_navigation/features/home/services/background/background_handler.dart';

class NavigationBackgroundHandler extends BackgroundHandler {
  @override
  void startService(LatLng myPosition, LatLng firstStation,
      CalculationModel calculatePosition) {
    FlutterForegroundTask.init(
      androidNotificationOptions: AndroidNotificationOptions(
        channelId: 'foreground_service',
        channelName: "wix",
        channelDescription: 'wix task',
        channelImportance: NotificationChannelImportance.LOW,
        priority: NotificationPriority.LOW,
      ),
      iosNotificationOptions: const IOSNotificationOptions(),
      foregroundTaskOptions: const ForegroundTaskOptions(
        interval: 5000,
        isOnceEvent: false,
        autoRunOnBoot: true,
        allowWakeLock: true,
        allowWifiLock: true,
      ),
    );

    FlutterForegroundTask.startService(
      notificationTitle: "GeoWix",
      notificationText: 'Bilgiler bekleniyor...',
    );
  }

  @override
  void updateService(CalculationModel calculatePosition, Timer? timer) {
    FlutterForegroundTask.updateService(
      notificationTitle: calculatePosition.text,
      notificationText:
          'Uzaklık: ${calculatePosition.distance}  Süre: ${calculatePosition.duration} ',
    );
  }

  @override
  void stopService() {
    FlutterForegroundTask.stopService();
  }
}
