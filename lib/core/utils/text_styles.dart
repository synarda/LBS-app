import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wix_navigation/core/utils/colors.dart';

class Styles {
  static TextStyle get smallTextStyle => GoogleFonts.montserrat(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
      );
  static TextStyle get mediumTextStyle => GoogleFonts.montserrat(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
      );
  static TextStyle get bigTextStyle => GoogleFonts.montserrat(
        fontSize: 19,
        fontWeight: FontWeight.w500,
        color: AppColors.textColor,
      );
  static TextStyle get smallTitleStyle => GoogleFonts.montserrat(
        fontSize: 19,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
  static TextStyle get bigTitleStyle => GoogleFonts.montserrat(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        color: Colors.white,
      );
}
