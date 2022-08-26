import 'package:flutter/material.dart';

class AppColors {
//=========================================================================================

//                         By Mohamed Yahia Mahmoud

//=========================================================================================
  static const Color activitiesDropDown = Color(0xFF182A5E);
  static const Color selectedTab = Color(0xFF13A69A);
  static const Color unseletabColor = Color(0xFF707070);
  static const Color beginColor = Color(0xFF245550);
  static const Color endColor = Color(0xFF13A69A);
  static const Color hintTextColor = Color(0xFFB4B4B4);
  static const Color bgrColor = Color(0xFFE9EBEF);

  static const Color kcalColor = Color(0xFFE8F8F7);
  static const Color kcaTextColor = Color(0xFF0FA59A);






}

MaterialColor createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = <int, Color>{};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}
