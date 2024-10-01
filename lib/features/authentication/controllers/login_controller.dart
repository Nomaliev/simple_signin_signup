import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/data/repositories/authentication_repo.dart';
import 'package:simple_signin_signup/features/personalization/screens/home.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/snackbars/snackbars.dart';

class LoginController extends GetxController {
  static LoginController get intance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final hidePassword = true.obs;
  final isChecked = false.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void logIn() async {
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

      if (!loginFormKey.currentState!.validate()) {
        Navigator.of(Get.overlayContext!).pop();
        return;
      }

      await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      Get.offAll(() => const AppHome());
    } catch (e) {
      AppSnackbars.errorSnackBar(error: e.toString());
      Navigator.of(Get.context!).pop();
    }
  }
}
