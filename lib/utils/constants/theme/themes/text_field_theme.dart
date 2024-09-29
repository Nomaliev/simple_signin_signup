import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';

class AppTextFieldTheme {
  //Light Theme
  static InputDecorationTheme lightTextFieldTheme = InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    contentPadding: const EdgeInsets.all(AppSizes.defaultPadding),
    errorMaxLines: 3,
    labelStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 1, color: Colors.grey)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 1, color: Colors.grey)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 1, color: Colors.black12)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 1, color: Colors.red)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );

  //Dark Theme
  static InputDecorationTheme darkTextFieldTheme = InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.never,
    contentPadding: const EdgeInsets.all(AppSizes.defaultPadding),
    errorMaxLines: 2,
    labelStyle: const TextStyle().copyWith(fontSize: 16, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 1, color: Colors.grey)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 1, color: Colors.grey)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 1, color: Colors.white)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(width: 1, color: Colors.red)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}
