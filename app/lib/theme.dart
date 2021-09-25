import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BrickColors {
  static const Color orchidCrayoia = Color(0xFFFFB2E6);
  static const Color darkLiver = Color(0xFF483C46);
  static const Color vividViolet = Color(0xFF8447FF);
  static const Color aquamarine = Color(0xFF8CFFDA);
}

class BrickTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: 'Raleway',
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(BrickColors.vividViolet),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(
                horizontal: BrickSpacing.xl, vertical: BrickSpacing.l),
          ),
        ),
      ),
    );
  }

  static TextTheme get textTheme {
    return const TextTheme(
      bodyText1: TextStyle(fontSize: 14),
      headline1: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 48,
        fontWeight: FontWeight.w700,
      ),
      headline2: TextStyle(
        fontFamily: 'Poppins',
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      button: TextStyle(
        fontFamily: 'Raleway',
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}

class BrickSpacing {
  static const double s = 8;
  static const double m = 16;
  static const double l = 18;
  static const double l1 = 24;
  static const double xl = 32;
  static const double xxl = 40;
}
