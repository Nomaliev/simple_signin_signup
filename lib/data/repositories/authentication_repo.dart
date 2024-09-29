import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:simple_signin_signup/features/personalization/screens/home.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final _auth = FirebaseAuth.instance;

  @override
  void onReady() {
    screenRedirect();
  }

  void screenRedirect() async {
    final user = _auth.currentUser;
    if (user != null) {
      Get.offAll(() => const AppHome());
    }
  }

  Future<UserCredential> registerWithEmailAndPassword(
      String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
