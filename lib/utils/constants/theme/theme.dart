import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/theme/themes/appbar_theme.dart';
import 'package:simple_signin_signup/utils/constants/theme/themes/text_theme.dart';

class AppThemes {
  AppThemes._();
  //-- LIGHT THEME
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Play',
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: AppTextTheme.ligthTextTheme,
      appBarTheme: AppAppBarTheme.lightAppBarTheme);
  //-- DARK THEME
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Play',
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: AppTextTheme.darkTextTheme);
}
