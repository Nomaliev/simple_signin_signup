import 'package:flutter/material.dart';

class AppHelperFunctions {
  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
