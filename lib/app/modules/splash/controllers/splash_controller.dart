import 'package:get/get.dart';
import 'package:twitter_navigation/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    1.1.delay().then((value) => Get.offAllNamed(Routes.MAIN_LAYOUT));
  }
}
