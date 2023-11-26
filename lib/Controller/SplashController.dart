import 'package:e_book/Pages/HomePage/HomePage.dart';
import 'package:e_book/Pages/WelcomePage.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SplashController extends GetxController{
  final auth = FirebaseAuth.instance;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splashContoller();
  }

  void splashContoller() {
    Future.delayed(Duration(seconds: 4), () {
      if(auth.currentUser != null) {
        Get.offAll(HomePage());
      }
      else {
        Get.offAll(WelcomePage());
      }
    });
  }
}