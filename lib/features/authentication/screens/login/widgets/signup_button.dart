import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/authentication/screens/signup/sign_up.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class SignupButton extends StatelessWidget {
  const SignupButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDark(context);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: isDark
                  ? AppColors.darkThemeButtonColor
                  : AppColors.lightButtonColor),
          onPressed: () => Get.to(() => const SignUpPage()),
          child: Text(AppTextStrings.signUp,
              style: Theme.of(context).textTheme.titleLarge)),
    );
  }
}
