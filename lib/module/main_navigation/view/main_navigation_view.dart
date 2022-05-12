import 'package:flutter/material.dart';
import '../controller/main_navigation_controller.dart';

import 'package:get/get.dart';

class MainNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavigationController>(
      init: MainNavigationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("MainNavigation"),
          ),
        );
      },
    );
  }
}