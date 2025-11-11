import 'package:flutter/material.dart';
import 'schema_color.dart';

class FormTheme{
  static final textfields = InputDecorationTheme(
    filled: true,
    fillColor: Color(0xFF292929),
    labelStyle: TextStyle(color:  AppColors.darkTextColor.withOpacity(0.6)),
    hintStyle: TextStyle(color:  AppColors.darkTextColor.withOpacity(0.6)),
    prefixIconColor: AppColors.secundaryColor,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Color(0xFF424242)),
    ),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: AppColors.secundaryColor, width: 2)
    ),
  );
}