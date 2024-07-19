import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';
import 'package:wix_navigation/features/home/presentation/pages/home_page.dart';
import 'package:wix_navigation/features/home/presentation/providers/navigation_provider.dart';
part '../widgets/stations_widget.dart';

void stationsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    elevation: 0,
    context: context,
    backgroundColor: Colors.transparent,
    builder: (BuildContext context) {
      return Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0)),
        ),
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Stations",
                style: Styles.mediumTextStyle
                    .copyWith(color: AppColors.mainColorFirst),
              ),
              const SizedBox(height: 20),
              const StationsWidget(),
            ],
          ),
        ),
      );
    },
  );
}
