import 'package:flutter/material.dart';
import 'schema_color.dart';

class BackgroundThemeApp {
  static const BoxDecoration backgroundDecoration = BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFF212121),
            AppColors.backgroundColor,
            AppColors.backgroundColor
          ]
      )
  );

  static const BoxDecoration whiteBgDecoration = BoxDecoration(
      color: Color(0xFF333333)
  );

  static const BoxDecoration grayBgDecoration = BoxDecoration(
      color: Color(0xFF424242)
  );
}