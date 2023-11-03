import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_clearn_code/core/constants/my_colors.dart';

class AppTheme {
  AppTheme._();
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: MyColor.primaryColor,

    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    useMaterial3: true,
  );
  static final dark = ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: MyColor.secondaryColor,
    ),
    fontFamily: GoogleFonts.poppins().fontFamily,
    useMaterial3: true,
  );
}
