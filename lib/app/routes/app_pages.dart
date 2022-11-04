import 'package:get/get.dart';

import 'package:twitter_navigation/app/modules/home/bindings/home_binding.dart';
import 'package:twitter_navigation/app/modules/home/views/home_view.dart';
import 'package:twitter_navigation/app/modules/main_layout/bindings/main_layout_binding.dart';
import 'package:twitter_navigation/app/modules/main_layout/views/main_layout_view.dart';
import 'package:twitter_navigation/app/modules/messages/bindings/messages_binding.dart';
import 'package:twitter_navigation/app/modules/messages/views/messages_view.dart';
import 'package:twitter_navigation/app/modules/new_page/bindings/new_page_binding.dart';
import 'package:twitter_navigation/app/modules/new_page/views/new_page_view.dart';
import 'package:twitter_navigation/app/modules/notifications/bindings/notifications_binding.dart';
import 'package:twitter_navigation/app/modules/notifications/views/notifications_view.dart';
import 'package:twitter_navigation/app/modules/search_twitter/bindings/search_twitter_binding.dart';
import 'package:twitter_navigation/app/modules/search_twitter/views/search_twitter_view.dart';
import 'package:twitter_navigation/app/modules/space/bindings/space_binding.dart';
import 'package:twitter_navigation/app/modules/space/views/space_view.dart';
import 'package:twitter_navigation/app/modules/splash/bindings/splash_binding.dart';
import 'package:twitter_navigation/app/modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.MAIN_LAYOUT,
      page: () => MainLayoutView(),
      binding: MainLayoutBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_TWITTER,
      page: () => SearchTwitterView(),
      binding: SearchTwitterBinding(),
    ),
    GetPage(
      name: _Paths.SPACE,
      page: () => SpaceView(),
      binding: SpaceBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.MESSAGES,
      page: () => MessagesView(),
      binding: MessagesBinding(),
    ),
    GetPage(
      name: _Paths.NEW_PAGE,
      transition: Transition.rightToLeft,
      page: () => NewPageView(),
      binding: NewPageBinding(),
    ),
  ];
}
