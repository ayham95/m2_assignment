import 'package:candy/foundation/coloring.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
        scaffoldBackgroundColor: baseContentLight,
        canvasColor: baseContentLight,
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: baseNavLight,
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: const ColorScheme.dark().copyWith(
            background: baseNavDark,
            primary: baseContentLight,
          ),
        ),
        textTheme: _textTheme(ThemeMode.light),
        iconTheme: const IconThemeData(color: labelLight2));
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
        scaffoldBackgroundColor: baseContentDark,
        canvasColor: baseContentDark,
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: baseNavDark,
        ),
        buttonTheme: ButtonThemeData(
          colorScheme: const ColorScheme.dark().copyWith(
            background: baseNavLight,
            primary: baseContentDark,
          ),
        ),
        textTheme: _textTheme(ThemeMode.dark),
        iconTheme: const IconThemeData(color: labelLight2));
  }

  static TextTheme _textTheme(ThemeMode mode) {
    var textColor = baseContentDark;

    switch (mode) {
      case ThemeMode.light:
        textColor = baseContentDark;
        break;
      case ThemeMode.dark:
        textColor = baseContentLight;
        break;
      default:
        textColor = baseContentDark;
        break;
    }

    return TextTheme(
      displayLarge: TextStyle(
        fontSize: 110,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
      displayMedium: TextStyle(
        fontSize: 90,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
      displaySmall: TextStyle(
        fontSize: 60,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
      headlineLarge: TextStyle(
        fontSize: 110,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
      headlineMedium: TextStyle(
        fontSize: 90,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
      headlineSmall: TextStyle(
        fontSize: 60,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
      titleLarge: TextStyle(
        fontSize: 42,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
      titleMedium: TextStyle(
        fontSize: 32,
        color: textColor,
        fontWeight: FontWeight.w900,
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        color: textColor,
        fontWeight: FontWeight.w800,
      ),
      bodyLarge: TextStyle(fontSize: 18, color: textColor),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: textColor,
        fontWeight: FontWeight.w500,
      ),
      bodySmall: TextStyle(fontSize: 12, color: textColor),
      labelLarge: TextStyle(fontSize: 15, color: textColor),
      labelMedium: TextStyle(fontSize: 13, color: textColor),
    );
  }
}
