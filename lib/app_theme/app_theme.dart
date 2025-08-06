import 'package:e_commerce/features/tabs/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppTheme{
  static final ThemeData  theme = ThemeData(
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF004182),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xFF004182),
      showUnselectedLabels: false,
      showSelectedLabels: false,

    )

  );
}