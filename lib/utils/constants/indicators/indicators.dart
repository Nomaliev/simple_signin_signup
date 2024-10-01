import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';

class AppIndicators {
  static loadingIndicator() {
    return showDialog(
        context: Get.context!,
        builder: (context) {
          return Center(
              child: CircularProgressIndicator.adaptive(
            valueColor: AlwaysStoppedAnimation(
                AppHelperFunctions.isDark(Get.context!)
                    ? AppColors.lightButtonColor
                    : AppColors.darkThemeButtonColor),
          ));
        });
  }
}
