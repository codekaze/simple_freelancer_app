import 'package:flutter/material.dart';
import 'package:freelancer_app/core.dart';
import 'package:freelancer_app/service/auth_service.dart';
import '../controller/profile_controller.dart';

import 'package:get/get.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProfileController>(
      init: ProfileController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("Profile"),
          ),
          body: Column(
            children: [
              Spacer(),
              ExButton(
                label: "Logout",
                color: dangerColor,
                onPressed: () async {
                  await AuthService().logout();
                  await Get.off(LoginView());
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
