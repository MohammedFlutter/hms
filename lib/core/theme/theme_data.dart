import 'package:flutter/material.dart';
import 'package:medica/core/theme/buttons_theme.dart';
import 'package:medica/core/theme/custom_text_field_theme.dart';
import 'package:medica/core/theme/transition.dart';

extension MyThemeData on ThemeData {
   ThemeData create(ColorScheme colorScheme) => ThemeData(
  colorScheme: colorScheme,
      pageTransitionsTheme: CustomTransition.pageTransitionTheme,
      filledButtonTheme: ButtonsTheme.filledButtonThemeData,
      inputDecorationTheme: CustomTextFieldTheme.inputDecorationTheme,
      useMaterial3: true,
  );
}