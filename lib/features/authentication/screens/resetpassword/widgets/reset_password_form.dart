import 'package:flutter/material.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextFormField(
          decoration: const InputDecoration(
        labelText: AppTextStrings.email,
      )),
    );
  }
}
