import 'package:flutter/material.dart';
import 'package:simple_signin_signup/features/authentication/controllers/reset_password_controller.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isDark = AppHelperFunctions.isDark(context);
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () => ResetPasswordController.instance.resetPassword(),
          child: Text(
            AppTextStrings.requestReset,
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: isDark ? AppColors.black : AppColors.white),
          )),
    );
  }
}
