import 'package:flutter/material.dart';
import 'package:simple_signin_signup/app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:simple_signin_signup/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}
