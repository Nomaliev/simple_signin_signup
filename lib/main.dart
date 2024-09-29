import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:simple_signin_signup/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:simple_signin_signup/data/repositories/authentication_repo.dart';
import 'package:simple_signin_signup/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  runApp(const MyApp());
}
