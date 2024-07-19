import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:wix_navigation/core/utils/colors.dart';

class SmallWaitingWidget extends StatelessWidget {
  const SmallWaitingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await Geolocator.openLocationSettings();
      },
      child: const CupertinoActivityIndicator(
          animating: true, color: AppColors.mainColorFirst, radius: 20),
    );
  }
}
