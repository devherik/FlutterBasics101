import 'package:flutter/material.dart';

import 'package:basic101/config/app_globals.dart' as global;

abstract class AppTheme {
  bool selectedTheme = true;
  changeTheme() => selectedTheme = !selectedTheme;
  static ThemeData get day {
    return ThemeData(
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: global.sombreGrey),
          titleTextStyle: TextStyle(
            color: global.sombreGrey,
            fontSize: 16,
            letterSpacing: 3,
          ),
        ),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(
                color: global.sombreGrey, fontSize: 16, letterSpacing: 3)),
        dividerTheme:
            const DividerThemeData(color: global.sombreGrey, thickness: 1),
        scaffoldBackgroundColor: global.brightGrey);
  }

  static ThemeData get night {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: global.brightGrey),
        titleTextStyle: TextStyle(
          color: global.brightGrey,
          fontSize: 16,
          letterSpacing: 3,
        ),
      ),
      textTheme: const TextTheme(
          bodyMedium: TextStyle(
              color: global.brightGrey, fontSize: 16, letterSpacing: 3)),
      dividerTheme:
          const DividerThemeData(color: global.brightGrey, thickness: 1),
      scaffoldBackgroundColor: global.sombreGrey,
    );
  }
}
