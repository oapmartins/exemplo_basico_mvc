import 'package:exemplo_basico_mvc/core/router/login_routers.dart';
import 'package:exemplo_basico_mvc/features/login/pages/login_page.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();

    Future.delayed(const Duration(seconds: 2), () {
      Get.offAllNamed(LoginRouters.LOGIN);
    });
  }
}
