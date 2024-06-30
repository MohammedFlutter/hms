import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBarTheme {
  static AppBarTheme appBarTheme(ColorScheme colors) => AppBarTheme(
        backgroundColor: colors.primary,
        foregroundColor: colors.onPrimary,
        elevation: 4.0,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.bold,
          color: colors.onPrimary,
        ),
        iconTheme: IconThemeData(
          color: colors.onPrimary,
        ),
      );
}
