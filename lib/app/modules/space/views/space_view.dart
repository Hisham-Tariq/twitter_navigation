import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/space_controller.dart';

class SpaceView extends GetView<SpaceController> {
  const SpaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text('SpaceView is working'),
      ),
    );
  }
}
