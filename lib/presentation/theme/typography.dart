import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class AppTypography {
  AppTypography._();

  static final TextStyle headline1 = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
    fontSize: 34,
    color: AppColors.title,
  );

  static final TextStyle headline2 = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: AppColors.title,
  );

  static final TextStyle headline3 = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    color: AppColors.title,
  );

  static final TextStyle headline4 = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
    fontSize: 22,
    color: AppColors.title,
  );

  static final TextStyle headline5 = GoogleFonts.montserrat(
    fontWeight: FontWeight.bold,
    fontSize: 20,
    color: AppColors.title,
  );

  static final TextStyle headline6 = GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    fontSize: 18,
    color: AppColors.title,
  );

  static final TextStyle title = GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    fontSize: 14,
    color: AppColors.title,
  );

  static final TextStyle description = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.description,
  );

  static final TextStyle buttonLink = GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    fontSize: 13,
    color: AppColors.title,
  );

  static final TextStyle textButton = GoogleFonts.montserrat(
    fontWeight: FontWeight.w600,
    fontSize: 17,
    color: AppColors.title,
  );

  static final TextStyle caption = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    fontSize: 14,
    color: AppColors.title,
  );

  static final TextStyle formText = GoogleFonts.montserrat(
    fontWeight: FontWeight.w400,
    fontSize: 17,
    color: AppColors.title,
  );
}
