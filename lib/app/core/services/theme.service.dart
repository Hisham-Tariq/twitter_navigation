import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeService extends GetxService {
  static const String _themeKey = 'theme_mode';
  late final Rx<ThemeMode> currentThemeMode;
  late ColorScheme _lightColors, _darkColors;

  Future<ThemeService> init(ColorScheme lightColors, ColorScheme darkColor) async {
    _lightColors = lightColors;
    _darkColors = darkColor;
    currentThemeMode = Rx<ThemeMode>(getCurrentThemeMode());
    _setInitialNavigationAndStatusBarBrightness();
    window.onPlatformBrightnessChanged = _updateStatusBarIconsBrightness;
    return this;
  }

  SingletonFlutterWindow get window => WidgetsBinding.instance.window;

  ThemeMode getCurrentThemeMode() => ThemeMode.values[GetStorage().read(_themeKey) ?? 0];

  _updateStatusBarIconsBrightness() {
    final themeMode = getCurrentThemeMode();
    Brightness brightness = window.platformBrightness;
    if (themeMode != ThemeMode.system) {
      brightness = themeMode == ThemeMode.light ? Brightness.light : Brightness.dark;
    }
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: (brightness == Brightness.dark ? _darkColors : _lightColors).background,
        statusBarIconBrightness: brightness == Brightness.dark ? Brightness.light : Brightness.dark,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarColor: (brightness == Brightness.dark ? _darkColors : _lightColors).background,
        systemNavigationBarIconBrightness: brightness == Brightness.dark ? Brightness.light : Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }

  _setInitialNavigationAndStatusBarBrightness() {
    final themeMode = getCurrentThemeMode();
    Brightness brightness = window.platformBrightness;
    if (themeMode != ThemeMode.system) {
      brightness = themeMode == ThemeMode.light ? Brightness.light : Brightness.dark;
    }

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: (brightness == Brightness.dark ? _darkColors : _lightColors).background,
        statusBarIconBrightness: brightness == Brightness.dark ? Brightness.light : Brightness.dark,
        systemNavigationBarContrastEnforced: true,
        systemNavigationBarColor: (brightness == Brightness.dark ? _darkColors : _lightColors).background,
        systemNavigationBarIconBrightness: brightness == Brightness.dark ? Brightness.light : Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays: [SystemUiOverlay.bottom]);
  }

  updateThemeMode(ThemeMode mode) {
    GetStorage().write(_themeKey, mode.index);
    Get.changeThemeMode(mode);
    currentThemeMode.value = mode;
    _updateStatusBarIconsBrightness();
  }

  // method to show the disalog or bottom sheet to select the theme mode
  showThemeModeSelectionDialog() {
    Get.dialog(
      Dialog(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Select ThemeMode',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            RadioListTile<ThemeMode>(
              title: const Text("Light"),
              value: ThemeMode.light,
              contentPadding: EdgeInsets.zero,
              groupValue: currentThemeMode.value,
              onChanged: (value) {
                updateThemeMode(value!);
                Get.back();
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text("Dark"),
              value: ThemeMode.dark,
              contentPadding: EdgeInsets.zero,
              groupValue: currentThemeMode.value,
              onChanged: (value) {
                updateThemeMode(value!);
                Get.back();
              },
            ),
            RadioListTile<ThemeMode>(
              title: const Text("System"),
              value: ThemeMode.system,
              contentPadding: EdgeInsets.zero,
              groupValue: currentThemeMode.value,
              onChanged: (value) {
                updateThemeMode(value!);
                Get.back();
              },
            ),
          ],
        ).paddingAll(20),
      ),
    );
  }

  // bottom sheet to select the theme mode
  showThemeModeSelectionBottomSheet() {
    Get.bottomSheet(
      ignoreSafeArea: true,
      isScrollControlled: true,
      enableDrag: false,
      BottomSheet(
        enableDrag: false,
        onClosing: () {},
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select ThemeMode',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              RadioListTile<ThemeMode>(
                title: const Text("Light"),
                value: ThemeMode.light,
                contentPadding: EdgeInsets.zero,
                groupValue: currentThemeMode.value,
                onChanged: (value) {
                  updateThemeMode(value!);
                  Get.back();
                },
              ),
              RadioListTile<ThemeMode>(
                title: const Text("Dark"),
                value: ThemeMode.dark,
                contentPadding: EdgeInsets.zero,
                groupValue: currentThemeMode.value,
                onChanged: (value) {
                  updateThemeMode(value!);
                  Get.back();
                },
              ),
              RadioListTile<ThemeMode>(
                title: const Text("System"),
                value: ThemeMode.system,
                contentPadding: EdgeInsets.zero,
                groupValue: currentThemeMode.value,
                onChanged: (value) {
                  updateThemeMode(value!);
                  Get.back();
                },
              ),
            ],
          ).paddingAll(20);
        },
      ),
    );
  }
}
