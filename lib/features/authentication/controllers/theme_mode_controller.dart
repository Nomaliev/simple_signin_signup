import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeModeController extends GetxController {
  static ThemeModeController get instance => Get.find();

  ThemeMode setDarkTheme() {
    return ThemeMode.dark;
  }
}
