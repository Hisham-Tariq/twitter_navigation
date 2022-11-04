import 'package:flutter/material.dart';

typedef  WidgetFunction = Widget Function(BuildContext context);

class BottomNavPageModel {
  final String name;
  final String icon;
  final String activeIcon;
  final String fabIcon;
  final WidgetFunction titleWidget;
  final WidgetFunction actionWidget;
  final Widget page;

  BottomNavPageModel({
    required this.name,
    required this.icon,
    required this.activeIcon,
    required this.fabIcon,
    required this.titleWidget,
    required this.actionWidget,
    required this.page,
  });
}
