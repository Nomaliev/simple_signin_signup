import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/colors.dart';
import 'package:simple_signin_signup/utils/constants/helpers.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
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
                  ? const Color.fromARGB(255, 29, 27, 27)
                  : AppColors.lightButtonColor),
          onPressed: () {},
          child: Text(
            AppTextStrings.logIn,
            style: Theme.of(context).textTheme.titleLarge,
          )),
    );
  }
}
