import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/data/repositories/authentication_repo.dart';
import 'package:simple_signin_signup/data/repositories/user_repo.dart';
import 'package:simple_signin_signup/features/authentication/models/user_model.dart';
import 'package:simple_signin_signup/features/authentication/screens/signup/widgets/success_screen.dart';
import 'package:simple_signin_signup/utils/indicators/indicators.dart';
import 'package:simple_signin_signup/utils/snackbars/snackbars.dart';

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
      AppIndicators.loadingIndicator();

      if (!signUpFormKey.currentState!.validate()) {
        Get.back();
        return;
      }

      final userCredential = await AuthenticationRepository.instance
          .registerWithEmailAndPassword(
              email.text.trim(), password.text.trim());

      final newUser =
          UserModel(id: userCredential.user!.uid, email: email.text.trim());

      final userRepo = Get.put(UserRepository());
      await userRepo.saveUserData(newUser);
      Get.to(() => const SignUpSuccessScreen());
    } catch (e) {
      AppSnackbars.errorSnackBar(error: e.toString());
      Get.back();
    }
  }
}
