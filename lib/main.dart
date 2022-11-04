import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:twitter_navigation/app/common/theme/default_theme.dart';
import 'package:twitter_navigation/app/core/services/theme.service.dart';
import 'package:twitter_navigation/app/dependency_injection/di.dart';
import 'app/routes/app_pages.dart';

void main() async {
  // intialize the binding
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Application",
      debugShowCheckedModeBanner: false,
      themeMode: Get.find<ThemeService>().currentThemeMode.value,
      theme: lightTheme,
      darkTheme: darkTheme,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
    );
  }
}


// Home 
// title: Home
// Icon: Icons.home
// Title
// Action