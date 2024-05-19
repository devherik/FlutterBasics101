import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;

abstract class AppTheme {
  static ThemeData get day {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          primary: global.sombreGrey,
          secondary: global.majesticMist,
          seedColor: global.sombreGrey,
          background: global.brightGrey,
          error: global.red),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: global.sombreGrey),
        titleTextStyle: TextStyle(
          color: global.sombreGrey,
          fontSize: 16,
          letterSpacing: 3,
        ),
      ),
      iconTheme: const IconThemeData(color: global.sombreGrey),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: global.sombreGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
        displaySmall: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: global.sombreGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: global.sombreGrey,
          letterSpacing: 3,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          color: global.brightGrey,
          letterSpacing: 3,
        ),
        labelSmall: TextStyle(
          fontSize: 10,
          color: global.brightGrey,
          letterSpacing: 3,
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: global.sombreGrey,
        thickness: 1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return global.majesticMist;
              } else {
                return global.sombreGrey;
              }
            },
          ),
          iconColor: MaterialStateProperty.all<Color>(global.brightGrey),
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 12,
          )),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          shadowColor: MaterialStateProperty.all<Color>(global.majesticMist),
          elevation:
              MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return 5.0;
            } else {
              return 3.0;
            }
          }),
        ),
      ),
    );
  }

  static ThemeData get night {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
          primary: global.brightGrey,
          secondary: global.naturallyCalm,
          seedColor: global.brightGrey,
          background: global.sombreGrey,
          error: global.red),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: global.brightGrey),
        titleTextStyle: TextStyle(
          color: global.brightGrey,
          fontSize: 16,
          letterSpacing: 3,
        ),
      ),
      iconTheme: const IconThemeData(color: global.brightGrey),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: global.brightGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
        displaySmall: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: global.brightGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
        bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: global.brightGrey,
          letterSpacing: 3,
        ),
        labelMedium: TextStyle(
          fontSize: 14,
          color: global.sombreGrey,
          letterSpacing: 3,
        ),
        labelSmall: TextStyle(
          fontSize: 10,
          color: global.sombreGrey,
          letterSpacing: 3,
        ),
      ),
      dividerTheme: const DividerThemeData(
        color: global.brightGrey,
        thickness: 1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.hovered)) {
                return global.naturallyCalm;
              } else {
                return global.brightGrey;
              }
            },
          ),
          iconColor: MaterialStateProperty.all<Color>(global.sombreGrey),
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 12,
          )),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          shadowColor: MaterialStateProperty.all<Color>(global.naturallyCalm),
          elevation:
              MaterialStateProperty.resolveWith((Set<MaterialState> states) {
            if (states.contains(MaterialState.hovered)) {
              return 5.0;
            } else {
              return 3.0;
            }
          }),
        ),
      ),
    );
  }
}
