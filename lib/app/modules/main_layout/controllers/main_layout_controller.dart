import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../data/bottom_navigations.dart' as navs;

class MainLayoutController extends GetxController {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final bottomNavigations = navs.bottomNavigations;
  final currentIndex = 0.obs;
}
