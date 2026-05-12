import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/controller/myController.dart';

class HomeView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Obx example")),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<MyController>(
              init: MyController(),
              builder: (myController1) => Text("${myController1.count}"),
            ),
            ElevatedButton(
              onPressed: () {
               var myController = Get.find<MyController>();
               myController.incrementCounter();
              },
              child: Text("Increment"),
            ),
          ],
        ),
      ),
    );
  }
}
