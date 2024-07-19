import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/string_paths.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';
import 'package:wix_navigation/features/home/presentation/providers/navigation_provider.dart';

class OnTheRoadWidget extends ConsumerWidget {
  const OnTheRoadWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final Size screenSize = MediaQuery.of(context).size;
    final navigation = ref.watch(navigationProvider);
    return GestureDetector(
      onTap: navigation.stopStreamLocation,
      child: Container(
          height: screenSize.height * 0.06,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 1, color: AppColors.mainColorFirst)),
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(19),
                  child: Lottie.asset(lottieOnTheRoadPath,
                      width: 100, fit: BoxFit.cover)),
              SizedBox(
                width: 100,
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "Bitir",
                      textAlign: TextAlign.center,
                      style: Styles.smallTextStyle.copyWith(
                          fontSize: 12,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          )),
    );
  }
}
