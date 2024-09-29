import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:simple_signin_signup/utils/constants/app_sizes.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class LoginSignupForm extends StatelessWidget {
  const LoginSignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
            cursorColor: Colors.black,
            decoration: const InputDecoration(labelText: AppTextStrings.email)),
        const SizedBox(height: AppSizes.itemGap),
        TextFormField(
          obscureText: true,
          cursorColor: Colors.black,
          decoration: InputDecoration(
              labelText: AppTextStrings.password,
              suffixIcon: IconButton(
                  onPressed: () {}, icon: const Icon(Iconsax.eye_slash5))),
        ),
        const SizedBox(height: AppSizes.smallGap / 2),
        Row(
          children: [
            Checkbox(
              value: true,
              onChanged: (value) {},
            ),
            const Text(AppTextStrings.rememberMe,
                style: TextStyle(fontFamily: ''))
          ],
        )
      ],
    ));
  }
}
