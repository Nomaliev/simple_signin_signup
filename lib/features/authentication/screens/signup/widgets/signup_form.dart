import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:simple_signin_signup/features/authentication/controllers/signup_controller.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';
import 'package:simple_signin_signup/utils/constants/validation.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
        key: controller.signUpFormKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) => AppValidator.validateEmail(value),
              controller: controller.email,
              decoration: const InputDecoration(
                labelText: AppTextStrings.email,
              ),
            ),
            SizedBox(height: AppSizes.itemGap),
            Obx(
              () => TextFormField(
                  validator: (value) => AppValidator.validatePassword(value),
                  controller: controller.password,
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                      labelText: AppTextStrings.password,
                      suffixIcon: IconButton(
                          onPressed: () => controller.hidePassword.value =
                              !controller.hidePassword.value,
                          icon: Icon(controller.hidePassword.value
                              ? Iconsax.eye_slash5
                              : Iconsax.eye4)))),
            ),
            SizedBox(height: AppSizes.itemGap),
            Obx(
              () => TextFormField(
                  validator: (value) =>
                      AppValidator.validatePasswordConfirm(value),
                  controller: controller.confirmPassword,
                  obscureText: controller.hideConfirmPassword.value,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () => controller.hideConfirmPassword.value =
                            !controller.hideConfirmPassword.value,
                        icon: Icon(controller.hideConfirmPassword.value
                            ? Iconsax.eye_slash5
                            : Iconsax.eye4)),
                    labelText: AppTextStrings.confirmPassword,
                  )),
            ),
          ],
        ));
  }
}
