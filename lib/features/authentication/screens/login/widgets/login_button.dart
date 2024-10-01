import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/controllers/login_controller.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    final isDark = AppHelperFunctions.isDark(context);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () => controller.logIn(),
          child: Text(AppTextStrings.logIn,
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                  color: isDark ? AppColors.black : AppColors.white))),
    );
  }
}
