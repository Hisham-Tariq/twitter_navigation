import 'package:get/get.dart';

import '../controllers/search_twitter_controller.dart';

class SearchTwitterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchTwitterController>(
      () => SearchTwitterController(),
    );
  }
}
