import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF4e5ae8);
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darHeaderClr = Color(0xFF424242);

class Themes {
  static final light = ThemeData(
    backgroundColor: Colors.white,
    shadowColor: Colors.white,
    cardColor: Colors.white,
    primaryColor: primaryClr,
    brightness: Brightness.light,
    // colorSchemeSeed: primaryClr,
    appBarTheme: const AppBarTheme(
      color: primaryClr,
    ),
  );

  static final dark = ThemeData(
    backgroundColor: darkGreyClr,
    appBarTheme: const AppBarTheme(
      color: primaryClr,
    ),
    // colorSchemeSeed: darkGreyClr,
    // primaryColor: darkGreyClr,
    brightness: Brightness.dark,
  );
}
