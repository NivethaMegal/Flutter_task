import 'package:flutter/material.dart';
import 'package:flutter_task/themes/colors.dart';

class Themes {
  Themes._();
  static final ThemeData lightTheme = _lightTheme();
  static ThemeData _lightTheme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: AppColors.COLOR_WHITE,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.COLOR_BLACK),
      ),
      textTheme: TextTheme(
          subtitle1: TextStyle(
            fontSize: 12.0,
            color: AppColors.COLOR_GREY,
            fontWeight: FontWeight.bold,
          ),
          subtitle2: TextStyle(
              fontSize: 16.0,
              letterSpacing: -0.2,
              color: AppColors.COLOR_BLACK,
              fontWeight: FontWeight.bold),
          headline6: TextStyle(
            fontSize: 12.0,
            color: AppColors.COLOR_GREY,
            fontWeight: FontWeight.bold,
          ),
          headline5: TextStyle(
            fontSize: 12.0,
            color: AppColors.COLOR_WHITE,
            fontWeight: FontWeight.bold,
          ),
          headline4: TextStyle(
            fontSize: 22.0,
            letterSpacing: -0.95,
            color: AppColors.COLOR_LIGHT_BLACK,
            fontWeight: FontWeight.bold,
          )),
    );
  }
}
