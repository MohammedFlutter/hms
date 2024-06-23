import 'package:flutter/material.dart';

class CustomAppBarTheme {
  static AppBarTheme appBarTheme(ColorScheme colors) => AppBarTheme(
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
        elevation: 4.0,
        titleTextStyle: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          color: colors.onPrimary,
        ),
        iconTheme: IconThemeData(
          color: colors.onPrimary,
        ),
      );
}
