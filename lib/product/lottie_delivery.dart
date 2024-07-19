import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wix_navigation/core/utils/string_paths.dart';

class DeliveryLottieWidget extends StatelessWidget {
  const DeliveryLottieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(lottieDeliveryPath, fit: BoxFit.cover);
  }
}
