import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;

abstract class AppTheme {
  static ThemeData get day {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: global.brightGrey,
      colorScheme: ColorScheme.fromSeed(
          primary: global.sombreGrey,
          secondary: global.majesticMist,
          seedColor: global.sombreGrey,
          surface: global.brightGrey,
          error: global.red),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: global.sombreGrey),
        titleTextStyle: TextStyle(
          color: global.sombreGrey,
          fontSize: 16,
          letterSpacing: 3,
        ),
      ),
      iconTheme: const IconThemeData(color: global.sombreGrey),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: global.sombreGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
        displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: global.sombreGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
        displayMedium: TextStyle(
            fontSize: 56,
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
            leadingDistribution: TextLeadingDistribution.proportional),
        labelMedium: TextStyle(
            fontSize: 14,
            color: global.sombreGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
        labelSmall: TextStyle(
            fontSize: 10,
            color: global.sombreGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
      ),
      dividerTheme: const DividerThemeData(
        color: global.sombreGrey,
        thickness: 1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return global.naturallyCalm;
              } else {
                return global.brightGrey;
              }
            },
          ),
          iconColor: WidgetStateProperty.all<Color>(global.sombreGrey),
          padding:
              WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 12,
          )),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          shadowColor: WidgetStateProperty.all<Color>(global.brightGrey),
          elevation: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
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
      scaffoldBackgroundColor: global.sombreGrey,
      colorScheme: ColorScheme.fromSeed(
          primary: global.brightGrey,
          secondary: global.naturallyCalm,
          seedColor: global.brightGrey,
          surface: global.sombreGrey,
          error: global.red),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: global.brightGrey),
        titleTextStyle: TextStyle(
          color: global.brightGrey,
          fontSize: 16,
          letterSpacing: 3,
        ),
      ),
      iconTheme: const IconThemeData(color: global.brightGrey),
      textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
            color: global.brightGrey,
            letterSpacing: 3,
            leadingDistribution: TextLeadingDistribution.proportional),
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
        color: global.brightGrey,
        thickness: 1,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.resolveWith(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.hovered)) {
                return global.majesticMist;
              } else {
                return global.sombreGrey;
              }
            },
          ),
          iconColor: WidgetStateProperty.all<Color>(global.brightGrey),
          padding:
              WidgetStateProperty.all<EdgeInsets>(const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 12,
          )),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          ),
          shadowColor: WidgetStateProperty.all<Color>(global.sombreGrey),
          elevation: WidgetStateProperty.resolveWith((Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
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
