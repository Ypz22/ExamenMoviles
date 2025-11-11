import 'package:flutter/material.dart';
import 'schema_color.dart';

class ButtonThemeApp {
  static final primaryButtonStyle = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          foregroundColor: AppColors.darkTextColor,
          padding: const EdgeInsets.symmetric(horizontal: 28,vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          textStyle: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
      )
  );

  static final secondaryButtonStyle = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.secundaryColor,
          side: BorderSide(color: AppColors.secundaryColor, width: 2),
          padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          textStyle: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600)
      )
  );
}