import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_twitter_controller.dart';

class SearchTwitterView extends GetView<SearchTwitterController> {
  const SearchTwitterView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text('Search is working'),
      ),
    );
  }
}
