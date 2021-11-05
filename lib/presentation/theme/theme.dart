import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:note_app/presentation/theme/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: const Color(0xff252525),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.white,
      centerTitle: false,
      elevation: 0,
      titleTextStyle: GoogleFonts.montserrat(
        fontSize: 17,
        fontWeight: FontWeight.bold,
        color: AppColors.title,
      ),
      iconTheme: const IconThemeData(color: AppColors.title),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: const Color(0xff333333),
      primary: const Color(0xff333333),
    ),
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color(0xff252525),
      selectionHandleColor: Color(0xff252525),
      selectionColor: Colors.black26,
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.all(const Color(0xff252525)),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
    ),
  );
}
