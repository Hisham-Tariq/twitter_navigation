import 'package:get/get.dart';
import 'package:twitter_navigation/app/common/theme/default_theme.dart';

import '../core/services/theme.service.dart';

class DependencyInjection {
  static init() {
    Get.putAsync<ThemeService>(
      () => ThemeService().init(lightTheme.colorScheme, darkTheme.colorScheme),
      permanent: true,
    );
  }
}
