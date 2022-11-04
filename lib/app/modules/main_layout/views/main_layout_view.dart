import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:twitter_navigation/app/routes/app_pages.dart';
import 'package:twitter_navigation/gen/assets.gen.dart';

import '../controllers/main_layout_controller.dart';

class MainLayoutView extends GetView<MainLayoutController> {
  const MainLayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        final selectedNavigation = controller.bottomNavigations[controller.currentIndex.value];
        return Scaffold(
          key: controller.scaffoldKey,
          drawer: CustomDrawer(),
          body: CustomScrollView(
            slivers: [
              // AppBar
              SliverAppBar(
                elevation: 0.0,
                floating: true,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(1.0),
                  child: Container(
                    height: 1,
                    color: context.theme.colorScheme.onBackground.withOpacity(0.3),
                  ),
                ),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () => controller.scaffoldKey.currentState?.openDrawer(),
                    child: const CircleAvatar(
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
                title: selectedNavigation.titleWidget(context),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: selectedNavigation.actionWidget(context),
                  ),
                ],
              ),
              // Body
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 300),
                child: SizedBox(
                  key: ValueKey<String>(selectedNavigation.name),
                  child: selectedNavigation.page,
                ),
              ).sliverBox,
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: SvgPicture.asset(
                selectedNavigation.fabIcon,
                color: context.theme.colorScheme.onPrimary,
                key: ValueKey<String>(
                  selectedNavigation.fabIcon,
                ),
                height: 24,
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (index) {
              controller.currentIndex.value = index;
            },
            items: controller.bottomNavigations
                .map(
                  (e) => BottomNavigationBarItem(
                    icon: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: selectedNavigation.name == e.name
                          ? SvgPicture.asset(
                              e.activeIcon,
                              key: Key('${e.name}active'),
                              height: 24,
                              color: context.theme.colorScheme.onBackground,
                            )
                          : SvgPicture.asset(
                              e.icon,
                              key: Key('${e.name}normal'),
                              height: 24,
                              color: context.theme.colorScheme.onBackground,
                            ),
                    ),
                    label: e.name,
                  ),
                )
                .toList(),
          ),
        );
      },
    );
  }
}

class CustomDrawer extends GetWidget<MainLayoutController> {
  CustomDrawer({
    Key? key,
  }) : super(key: key);
  final List<Map<String, dynamic>> navigations = [
    {
      'title': 'Profile',
      'icon': Assets.user.path,
      'route': Routes.NEW_PAGE,
    },
    {
      'title': 'Topics',
      'icon': Assets.messageLines.path,
      'route': Routes.NEW_PAGE,
    },
    {
      'title': 'Bookmarks',
      'icon': Assets.bookmark.path,
      'route': Routes.NEW_PAGE,
    },
    {
      'title': 'Lists',
      'icon': Assets.squareList.path,
      'route': Routes.NEW_PAGE,
    },
    {
      'title': 'Twitter Circle',
      'icon': Assets.users.path,
      'route': Routes.NEW_PAGE,
    },
  ];

  final Map<String, List<Map<String, dynamic>>> extraNavigations = {
    'Creator Studio': [
      {
        'title': 'Moments',
        'icon': Assets.boltLightning.path,
        'route': Routes.NEW_PAGE,
      },
    ],
    'Proffesional Tools': [
      {
        'title': 'Twitter for Professionals',
        'icon': Assets.rocket.path,
        'route': Routes.NEW_PAGE,
      },
      {
        'title': 'Monetization',
        'icon': Assets.moneyBills.path,
        'route': Routes.NEW_PAGE,
      },
    ],
    'Settings & Support': [
      {
        'title': 'Settings and privacy',
        'icon': Assets.gear.path,
        'route': Routes.NEW_PAGE,
      },
      {
        'title': 'Help Center',
        'icon': Assets.circleQuestion.path,
        'route': Routes.NEW_PAGE,
      },
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: Get.width * 0.80,
      child: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const DrawerHeader(),
                      const DrawerSeparator(),
                      for (int i = 0; i < navigations.length; i++)
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: SvgPicture.asset(
                            navigations[i]['icon'],
                            height: 24,
                            color: context.theme.colorScheme.onBackground,
                          ),
                          title: Text(
                            navigations[i]['title'],
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          onTap: () {
                            Get.toNamed(navigations[i]['route']);
                          },
                        ),
                      const DrawerSeparator(),
                      for (int i = 0; i < extraNavigations.length; i++)
                        ValueBuilder<bool?>(
                          initialValue: false,
                          builder: (value, updateFn) {
                            return ExpansionPanelList(
                              expandedHeaderPadding: EdgeInsets.zero,
                              dividerColor: Colors.transparent,
                              elevation: 0.0,
                              expansionCallback: (index, isExpanded) {
                                updateFn(!isExpanded);
                              },
                              children: [
                                ExpansionPanel(
                                  backgroundColor: context.theme.colorScheme.background,
                                  isExpanded: value ?? false,
                                  canTapOnHeader: true,
                                  headerBuilder: (context, isExpanded) {
                                    return Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                        extraNavigations.keys.elementAt(i),
                                        style: GoogleFonts.montserrat(
                                          fontSize: 16,
                                          color: context.theme.colorScheme.onBackground,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    );
                                  },
                                  body: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: extraNavigations.values.elementAt(i).map(
                                      (e) {
                                        return ListTile(
                                          contentPadding: EdgeInsets.zero,
                                          leading: SvgPicture.asset(
                                            e['icon'],
                                            height: 24,
                                            color: context.theme.colorScheme.onBackground,
                                          ),
                                          title: Text(
                                            e['title'],
                                            style: GoogleFonts.montserrat(
                                              fontSize: 16,
                                            ),
                                          ),
                                          onTap: () {
                                            Get.toNamed(e['route']);
                                          },
                                        );
                                      },
                                    ).toList(),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      // ExpansionTile(
                      //   title: Text(
                      //     'Creator Studio',
                      //     style: GoogleFonts.montserrat(
                      //       fontSize: 16,
                      //       color: context.theme.colorScheme.onBackground,
                      //       fontWeight: FontWeight.w800,
                      //     ),
                      //   ),
                      //   collapsedBackgroundColor: context.theme.colorScheme.background,
                      //   backgroundColor: context.theme.colorScheme.background,
                      //   iconColor: context.theme.colorScheme.onBackground,
                      //   collapsedIconColor: context.theme.colorScheme.onBackground,
                      //   children: [

                      //   ],
                      // )
                      const SizedBox(height: 100)
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                height: 100,
                color: context.theme.colorScheme.background.withOpacity(0.75),
                child: Row(
                  children: [
                    Assets.lightbulbOn.svg(
                      height: 24,
                      color: context.theme.colorScheme.onBackground,
                    ),
                    const Spacer(),
                    Assets.qrcode.svg(
                      height: 24,
                      color: context.theme.colorScheme.onBackground,
                    ),
                  ],
                ).paddingSymmetric(horizontal: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerHeader extends GetWidget<MainLayoutController> {
  const DrawerHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: controller.scaffoldKey.currentState?.openDrawer,
                child: const CircleAvatar(
                  radius: 20,
                  child: Icon(Icons.person),
                ),
              ),
              const Spacer(),
              Assets.circleEllipsisVertical.svg(
                height: 24,
                color: context.theme.colorScheme.onBackground,
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'Hisham Tariq',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            '@HishamTariq_15',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            '4 Following 3 Followers',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}

class DrawerSeparator extends StatelessWidget {
  const DrawerSeparator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 24),
        Container(
          height: 1,
          color: context.theme.colorScheme.onBackground.withOpacity(0.1),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
