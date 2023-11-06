import 'package:e_book/Pages/WelcomePage.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    splashContoller();
  }

  void splashContoller() {
    Future.delayed(Duration(seconds: 4), () {
      Get.offAll(WelcomePage());
    });
  }
}