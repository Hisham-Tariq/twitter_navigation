import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TweenAnimationBuilder(
            duration: const Duration(seconds: 1),
            tween: Tween<double>(begin: 0, end: 1),
            builder: (context, value, widget) {
              return Assets.twitter.svg(
                height: 100 * value,
                color: context.theme.colorScheme.primary,
              );
            }),
      ),
    );
  }
}
