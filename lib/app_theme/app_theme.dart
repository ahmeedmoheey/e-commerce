import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppTheme{
  static final ThemeData  theme = ThemeData(

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF004182),
      type: BottomNavigationBarType.fixed,
       unselectedItemColor: Color(0xFF004182),
      selectedItemColor: Colors.white,
      showUnselectedLabels: false,
      showSelectedLabels: false,

    )

  );
}