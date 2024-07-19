import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:wix_navigation/core/utils/string_paths.dart';

class MyPositionWidget extends StatelessWidget {
  const MyPositionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(lottieMyPositionPath, fit: BoxFit.cover);
  }
}
