import 'package:flutter/material.dart';
import 'schema_color.dart';

class Typographic{
  static const TextTheme textTheme = TextTheme(
      displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w900,
          color: AppColors.darkTextColor
      ),titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w400,
      color: AppColors.darkTextColor
  ),
      bodyMedium: TextStyle(
          fontSize: 16,
          color: AppColors.darkTextColor
      ),
      labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: AppColors.secundaryColor
      )
  );
}