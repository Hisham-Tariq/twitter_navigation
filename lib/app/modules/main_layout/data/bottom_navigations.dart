import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:twitter_navigation/app/common/models/bottom_nav_page_model.dart';
import 'package:twitter_navigation/app/modules/home/views/home_view.dart';
import 'package:twitter_navigation/app/modules/notifications/views/notifications_view.dart';
import 'package:twitter_navigation/app/modules/search_twitter/views/search_twitter_view.dart';
import 'package:twitter_navigation/gen/assets.gen.dart';

import '../../space/views/space_view.dart';

final bottomNavigations = <BottomNavPageModel>[
  BottomNavPageModel(
    name: 'Home',
    icon: Assets.houseWindowOutlined.path,
    activeIcon: Assets.houseWindowFilled.path,
    fabIcon: Assets.plus.path,
    titleWidget: (BuildContext context) {
      return Assets.twitter.svg(color: context.theme.colorScheme.primary, height: 24);
    },
    actionWidget: (BuildContext context) {
      return Assets.stars.svg(
        height: 24,
        color: context.theme.colorScheme.onBackground,
      );
    },
    page: const HomeView(),
  ),
  BottomNavPageModel(
    name: 'Explore',
    icon: Assets.magnifyingGlassOutlined.path,
    activeIcon: Assets.magnifyingGlassFilled.path,
    fabIcon: Assets.plus.path,
    titleWidget: (BuildContext context) {
      return TextFormField(
        decoration: InputDecoration(
          hintText: 'Search Twitter',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: context.theme.colorScheme.onBackground.withOpacity(0.1),
        ),
      );
    },
    actionWidget: (BuildContext context) {
      return Assets.gear.svg(
        height: 24,
        color: context.theme.colorScheme.onBackground,
      );
    },
    page: const SearchTwitterView(),
  ),
  BottomNavPageModel(
    name: 'Space',
    icon: Assets.microphoneOutlined.path,
    activeIcon: Assets.microphoneFilled.path,
    fabIcon: Assets.circleMicrophone.path,
    titleWidget: (BuildContext context) {
      return Row(
        children: const [
          Text(
            'Twitter',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      );
    },
    actionWidget: (BuildContext context) {
      return const SizedBox.shrink();
    },
    page: const SpaceView(),
  ),
  BottomNavPageModel(
    name: 'Notifications',
    icon: Assets.bellOutlined.path,
    activeIcon: Assets.bellFilled.path,
    fabIcon: Assets.plus.path,
    titleWidget: (BuildContext context) {
      return Row(
        children: const [
          Text(
            'Notifications',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      );
    },
    actionWidget: (BuildContext context) {
      return Assets.gear.svg(
        height: 24,
        color: context.theme.colorScheme.onBackground,
      );
    },
    page: const NotificationsView(),
  ),
  BottomNavPageModel(
    name: 'Messages',
    icon: Assets.envelopeOutlined.path,
    activeIcon: Assets.envelopeFilled.path,
    fabIcon: Assets.envelopeDot.path,
    titleWidget: (BuildContext context) {
      return TextFormField(
        decoration: InputDecoration(
          hintText: 'Search Direct Messages',
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(30),
          ),
          filled: true,
          fillColor: context.theme.colorScheme.onBackground.withOpacity(0.1),
        ),
      );
    },
    actionWidget: (BuildContext context) {
      return Assets.gear.svg(
        height: 24,
        color: context.theme.colorScheme.onBackground,
      );
    },
    page: const NotificationsView(),
  ),
];
