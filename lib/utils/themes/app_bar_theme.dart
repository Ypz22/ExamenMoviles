import 'package:flutter/material.dart';
import 'schema_color.dart';

class AppBarThemeApp {
  static const AppBarTheme style = AppBarTheme(
    backgroundColor: AppColors.backgroundColor,
    foregroundColor: AppColors.darkTextColor,
    centerTitle: true,
    elevation: 2,
    titleTextStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: AppColors.darkTextColor
    ),
  );
}