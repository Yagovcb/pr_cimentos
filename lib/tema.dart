import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

ThemeData tema() {
  return ThemeData(
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: textTheme(),
    scaffoldBackgroundColor: kBackgroundColor,
    primaryColor: kPrimaryColor,
    appBarTheme: appBarTheme(),
  );
}

TextTheme textTheme() {
  return GoogleFonts.dmSansTextTheme().apply(displayColor: kTextBase);
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: Colors.transparent,
    elevation: 0,
    brightness: Brightness.light,
    centerTitle: true,
    iconTheme: IconThemeData(color: kTextPrimary),
    textTheme: TextTheme(
      headline6: TextStyle(
          color: kTextPrimary.withOpacity(0.5),
          fontSize: 14,
          fontWeight: FontWeight.bold),
    ),
  );
}
