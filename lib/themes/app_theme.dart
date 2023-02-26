import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors/app_colors.dart';

class AppTheme {
  const AppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.maroon),
    splashColor: AppColors.maroon,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Montserrat',

    // This uses the defaults provided by the TextTheme class,
    // which is in compliant with the Material Design spec.
    // Ref: https://api.flutter.dev/flutter/material/TextTheme-class.html
    textTheme: GoogleFonts.montserratTextTheme(),

    // inputDecorationTheme: InputDecorationTheme(
    //   focusColor: AppColors.green,
    // ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: 'Montserrat',

    // This uses the defaults provided by the TextTheme class,
    // which is in compliant with the Material Design spec.
    // Ref: https://api.flutter.dev/flutter/material/TextTheme-class.html
    textTheme: GoogleFonts.montserratTextTheme(),
  );
}
