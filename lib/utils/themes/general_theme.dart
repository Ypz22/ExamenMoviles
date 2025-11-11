import 'package:flutter/material.dart';
import 'schema_color.dart';
import 'app_bar_theme.dart';
import 'typographic.dart';
import 'form_theme.dart';
import 'button_theme.dart';

class GeneralTheme {
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.secundaryColor,
        background: AppColors.backgroundColor,
        surface: Color(0xFF1E1E1E),
        onPrimary: AppColors.darkTextColor,
        onSecondary: AppColors.darkTextColor,
        onBackground: AppColors.darkTextColor,
        onSurface: AppColors.darkTextColor,
      ),
      textTheme: Typographic.textTheme,
      appBarTheme: AppBarThemeApp.style,
      elevatedButtonTheme: ButtonThemeApp.primaryButtonStyle,
      outlinedButtonTheme: ButtonThemeApp.secondaryButtonStyle,
      inputDecorationTheme: FormTheme.textfields,
      scaffoldBackgroundColor: AppColors.backgroundColor
  );
}