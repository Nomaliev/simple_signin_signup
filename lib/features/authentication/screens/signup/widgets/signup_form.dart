import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            labelText: AppTextStrings.email,
          ),
        ),
        const SizedBox(height: AppSizes.itemGap),
        TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: AppTextStrings.password,
                suffixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Iconsax.eye_slash5)))),
        const SizedBox(height: AppSizes.itemGap),
        TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              labelText: AppTextStrings.confirmPassword,
            )),
      ],
    ));
  }
}
