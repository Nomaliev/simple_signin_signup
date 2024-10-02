import 'package:flutter/material.dart';
import 'package:simple_signin_signup/features/authentication/controllers/reset_password_controller.dart';
import 'package:simple_signin_signup/utils/constants/text_strings.dart';
import 'package:simple_signin_signup/utils/constants/validation.dart';

class ResetPasswordForm extends StatelessWidget {
  const ResetPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ResetPasswordController.instance;
    return Form(
      key: controller.resetPasswordFormKey,
      child: TextFormField(
          controller: controller.email,
          validator: (value) => AppValidator.validateEmail(value),
          decoration: const InputDecoration(
            labelText: AppTextStrings.email,
          )),
    );
  }
}
