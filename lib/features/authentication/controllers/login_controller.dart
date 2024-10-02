import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:simple_signin_signup/data/repositories/authentication_repo.dart';
import 'package:simple_signin_signup/features/personalization/screens/home.dart';
import 'package:simple_signin_signup/utils/constants/indicators/indicators.dart';
import 'package:simple_signin_signup/utils/snackbars/snackbars.dart';

class LoginController extends GetxController {
  static LoginController get intance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final hidePassword = true.obs;
  final rememberMe = false.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final storage = GetStorage();

  @override
  void onInit() {
    email.text = storage.read('remember_email') ?? '';
    super.onInit();
  }

  void logIn() async {
    try {
      AppIndicators.loadingIndicator();

      if (!loginFormKey.currentState!.validate()) {
        Get.back();
        return;
      }

      if (rememberMe.value) {
        await storage.write('remember_email', email.text.trim());
      } else {
        await storage.remove('remember_email');
      }

      await AuthenticationRepository.instance
          .loginWithEmailAndPassword(email.text.trim(), password.text.trim());

      Get.offAll(() => const AppHome());
    } catch (e) {
      AppSnackbars.errorSnackBar(error: e.toString());
      Get.back();
    }
  }
}
