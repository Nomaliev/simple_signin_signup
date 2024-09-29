import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';

class AppElevatedButtonTheme {
  //Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.darkButtonColor,
          elevation: 0,
          padding: const EdgeInsets.all(AppSizes.defaultPadding)));

  //Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          foregroundColor: AppColors.white,
          backgroundColor: AppColors.lightButtonColor,
          elevation: 0,
          padding: const EdgeInsets.all(AppSizes.defaultPadding)));
}
