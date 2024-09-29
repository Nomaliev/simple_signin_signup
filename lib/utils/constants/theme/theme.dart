import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/theme/themes/appbar_theme.dart';
import 'package:simple_signin_signup/utils/constants/theme/themes/checkbox_theme.dart';
import 'package:simple_signin_signup/utils/constants/theme/themes/elevated_button_theme.dart';
import 'package:simple_signin_signup/utils/constants/theme/themes/text_field_theme.dart';
import 'package:simple_signin_signup/utils/constants/theme/themes/text_theme.dart';

class AppThemes {
  //-- LIGHT THEME
  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Play',
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.backgroundColor,
      textTheme: AppTextTheme.ligthTextTheme,
      appBarTheme: AppAppBarTheme.lightAppBarTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: AppTextFieldTheme.lightTextFieldTheme,
      checkboxTheme: AppCheckBox.lightCheckBoxTheme);
  //-- DARK THEME
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Play',
      brightness: Brightness.dark,
      scaffoldBackgroundColor: const Color.fromARGB(255, 24, 23, 19),
      textTheme: AppTextTheme.darkTextTheme,
      appBarTheme: AppAppBarTheme.darkAppBarTheme,
      elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: AppTextFieldTheme.darkTextFieldTheme,
      checkboxTheme: AppCheckBox.darkCheckBoxTheme);
}
