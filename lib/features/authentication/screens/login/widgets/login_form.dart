import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:simple_signin_signup/features/authentication/controllers/login_controller.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';
import 'package:simple_signin_signup/utils/constants/validation.dart';

class LoginSignupForm extends StatelessWidget {
  const LoginSignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDark(context);
    final controller = LoginController.intance;
    return Form(
        key: controller.loginFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
                validator: (value) => AppValidator.validateEmail(value),
                controller: controller.email,
                cursorColor: isDark ? AppColors.white : AppColors.black,
                decoration:
                    const InputDecoration(labelText: AppTextStrings.email)),
            SizedBox(height: AppSizes.itemGap),
            Obx(
              () => TextFormField(
                validator: (value) =>
                    AppValidator.validateEmptyField('Password', value),
                controller: controller.password,
                obscureText: controller.hidePassword.value,
                cursorColor: isDark ? AppColors.white : AppColors.black,
                decoration: InputDecoration(
                    labelText: AppTextStrings.password,
                    suffixIcon: IconButton(
                        onPressed: () => controller.hidePassword.value =
                            !controller.hidePassword.value,
                        icon: Icon(controller.hidePassword.value
                            ? Iconsax.eye_slash5
                            : Iconsax.eye4))),
              ),
            ),
            SizedBox(height: AppSizes.smallGap / 2),
            Row(
              children: [
                Obx(
                  () => Checkbox(
                    value: controller.rememberMe.value,
                    onChanged: (value) => controller.rememberMe.value =
                        !controller.rememberMe.value,
                  ),
                ),
                GestureDetector(
                  onTap: () => controller.rememberMe.value =
                      !controller.rememberMe.value,
                  child: const Text(AppTextStrings.rememberMe,
                      style: TextStyle(fontFamily: '')),
                )
              ],
            )
          ],
        ));
  }
}
