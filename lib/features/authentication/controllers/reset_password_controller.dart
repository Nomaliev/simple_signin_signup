import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/data/repositories/authentication_repo.dart';
import 'package:simple_signin_signup/features/authentication/screens/resetpassword/widgets/password_sent.dart';
import 'package:simple_signin_signup/utils/indicators/indicators.dart';
import 'package:simple_signin_signup/utils/snackbars/snackbars.dart';

class ResetPasswordController extends GetxController {
  static ResetPasswordController get instance => Get.find();
  final email = TextEditingController();
  GlobalKey<FormState> resetPasswordFormKey = GlobalKey<FormState>();

  void resetPassword() async {
    try {
      AppIndicators.loadingIndicator();

      if (!resetPasswordFormKey.currentState!.validate()) {
        Get.back();
        return;
      }

      await AuthenticationRepository.instance.resetPassword(email.text.trim());

      Get.offAll(() => const PasswordSent());
    } catch (e) {
      AppSnackbars.errorSnackBar(error: e.toString());
    }
  }
}
