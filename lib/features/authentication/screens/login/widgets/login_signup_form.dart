import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:simple_signin_signup/features/authentication/controllers/login_controller.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class LoginSignupForm extends StatelessWidget {
  const LoginSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDark(context);
    final controller = Get.put(LoginController());
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
            cursorColor: isDark ? AppColors.white : AppColors.black,
            decoration: const InputDecoration(labelText: AppTextStrings.email)),
        SizedBox(height: AppSizes.itemGap),
        TextFormField(
          obscureText: true,
          cursorColor: isDark ? AppColors.white : AppColors.black,
          decoration: InputDecoration(
              labelText: AppTextStrings.password,
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Iconsax.eye_slash5))),
        ),
        SizedBox(height: AppSizes.smallGap / 2),
        Row(
          children: [
            Obx(
              () => Checkbox(
                value: controller.isChecked.value,
                onChanged: (value) =>
                    controller.isChecked.value = !controller.isChecked.value,
              ),
            ),
            GestureDetector(
              onTap: () =>
                  controller.isChecked.value = !controller.isChecked.value,
              child: const Text(AppTextStrings.rememberMe,
                  style: TextStyle(fontFamily: '')),
            )
          ],
        )
      ],
    ));
  }
}
