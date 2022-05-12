import 'package:flutter/material.dart';
import 'package:freelancer_app/module/main_navigation/view/main_navigation_view.dart';
import '../controller/login_controller.dart';

import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Login"),
          ),
          body: Column(
            children: [
              InkWell(
                onTap: () async {
                  await Get.off(MainNavigationView());
                },
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
