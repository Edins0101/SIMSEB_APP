import 'package:flutter/material.dart';

class AppTheme {
  //colors
  static const Color transparent = Color(0x00000000);
  static const Color white = Color(0xFFFFFFFF);
  static const Color whiteAlternative = Color(0xFFFEFFFA);
  static const Color primaryDarkest = Color(0xFF00587C);
  static const Color primaryDark = Color(0xFF1F41BB);
  static const Color primaryMedium = Color(0xFF8E9FDF);
  static const Color highlightMedium = Color(0xFFF4B400);
  static const Color naturalsDarkest = Color(0xFF15192E);
  static const Color naturalsMedium = Color(0xFFF4E0B2);
  static const Color positive = Color(0xFFA8D563);
  static const Color positiveMedium = Color(0xFF008A05);
  static const Color pink = Color(0xFFE1197A);
  static const Color warning = Color(0xFFEF8E34);
  static const Color textTitleForm = Color(0xFFA3A3A3);
  static const Color gray1 = Color(0xFFe5e7e9 );
  static const Color gray2 = Color(0xFFF7F8F9);
  static const Color gray3 = Color.fromARGB(163, 133, 130, 130);
  static const Color gray4 = Color(0xFFF3F3F3);
  static const Color error = Color(0xFFE4674E);
  static const Color error2 = Color(0xFFAD0048);
  static const Color black = Color(0xFF000000);

  //icons
  static const String logoIcon = "assets/logo_app.png";
  static const String icon404Path = "assets/barrio_not_found.png";
  static const String imageInformationWidget = "assets/ImageHome.png";
  static const String sosPath = "assets/CallSos.png";
  ThemeData theme() {
    return ThemeData(
      textSelectionTheme: const TextSelectionThemeData(
          selectionHandleColor: AppTheme.primaryDark,
          cursorColor: AppTheme.primaryDark),
      filledButtonTheme: const FilledButtonThemeData(
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(highlightMedium))),
      useMaterial3: true,
    );
  }
}
