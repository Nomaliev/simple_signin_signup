import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get intance => Get.find();
  final email = TextEditingController();
  final password = TextEditingController();
  final isChecked = false.obs;
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
}
