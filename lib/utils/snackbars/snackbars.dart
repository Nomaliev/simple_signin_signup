import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';

class AppSnackbars {
  static errorSnackBar({required error}) {
    return ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        duration: const Duration(seconds: 3),
        content: Container(
          padding: const EdgeInsets.all(24.0),
          margin: const EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppHelperFunctions.isDark(Get.context!)
                ? AppColors.darkThemeButtonColor.withOpacity(0.9)
                : AppColors.lightButtonColor.withOpacity(0.9),
          ),
          child: Text(
            error,
            style: Theme.of(Get.context!)
                .textTheme
                .titleSmall!
                .apply(fontFamily: '', color: Colors.red),
            textAlign: TextAlign.left,
          ),
        )));
  }
}
