import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';

class AppCheckBox {
  //Light Theme
  static CheckboxThemeData lightCheckBoxTheme =
      CheckboxThemeData(checkColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    },
  ), fillColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.checkBoxLight;
      } else {
        return Colors.transparent;
      }
    },
  ));

  //Dark Theme
  static CheckboxThemeData darkCheckBoxTheme =
      CheckboxThemeData(checkColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.selected)) {
        return Colors.white;
      } else {
        return Colors.black;
      }
    },
  ), fillColor: WidgetStateProperty.resolveWith(
    (states) {
      if (states.contains(WidgetState.selected)) {
        return AppColors.checkBoxDark;
      } else {
        return Colors.transparent;
      }
    },
  ));
}
