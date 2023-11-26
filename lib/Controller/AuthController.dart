import 'package:e_book/Config/Messages.dart';
import 'package:e_book/Pages/HomePage/HomePage.dart';
import 'package:e_book/Pages/WelcomePage.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController extends GetxController {

  RxBool isLoading = false.obs;

  final auth = FirebaseAuth.instance;

  void loginWithEmail() async {
    isLoading.value = true;
    try{
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );
      await auth.signInWithCredential(credential);
      successMessage("You're in! Enjoy your stay.");
      Get.offAll(HomePage());
    } catch (ex) {
      print(ex);
      errorMessage("Oops! Something went wrong. Please try again later.");
    }
    isLoading.value = false;
  }

  void signOut() async {
    await auth.signOut();
    successMessage("You've been logged out. See you soon!");
    Get.offAll(WelcomePage());
  }
}