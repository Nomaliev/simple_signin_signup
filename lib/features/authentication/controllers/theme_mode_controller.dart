import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeModeController extends GetxController {
  static ThemeModeController get instance => Get.find();
  final isSystem = true.obs;
  final isLight=false.obs;
  final isDark = false.obs;

  ThemeMode setTheme() {
    if (isLight.value) {
      return ThemeMode.light;
    }
    if (isDark.value) {
      return ThemeMode.dark;
    }else{
      return ThemeMode.system;
    }
  }
}
