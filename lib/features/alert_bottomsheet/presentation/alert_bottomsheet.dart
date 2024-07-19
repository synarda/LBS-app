import 'package:flutter/material.dart';
import 'package:wix_navigation/core/utils/colors.dart';
import 'package:wix_navigation/core/utils/space.dart';
import 'package:wix_navigation/core/utils/string_paths.dart';
import 'package:wix_navigation/core/utils/text_styles.dart';

void alertBottomSheet(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: AppColors.mainColorFirst,
      duration: const Duration(seconds: 2),
      content: Row(
        children: [
          Image.asset(imagesTruckIcon,
              height: 60, fit: BoxFit.cover, width: 70),
          CustomSpaces.extraLargeHorizontal,
          Flexible(
            child: Text(
              'Rotanız Güncellendiyseniz, "Yeniden rota oluştur" tuşuna basmayı unutmayınız!!!',
              style: Styles.smallTextStyle
                  .copyWith(color: Colors.white, fontSize: 10),
            ),
          ),
        ],
      ),
    ),
  );
}
