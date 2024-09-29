import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final hidePassword = true.obs;
  final hideConfirmPassword = true.obs;
  GlobalKey<FormState> signUpFormKey = GlobalKey<FormState>();

  void signUp() async {
    try {
      showDialog(
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

      if (!signUpFormKey.currentState!.validate()) {
        Navigator.of(Get.context!).pop();
      }
    } catch (e) {}
  }
}
