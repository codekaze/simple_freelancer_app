import 'package:flutter/material.dart';
import '../controller/my_bid_controller.dart';

import 'package:get/get.dart';

class MyBidView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MyBidController>(
      init: MyBidController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: Text("MyBid"),
          ),
        );
      },
    );
  }
}