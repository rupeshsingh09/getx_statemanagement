import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Get.parameters["a"] ?? ""),
            ElevatedButton(onPressed: () {
              Get.toNamed("/third");
            }, child: Text("navigate to third")),
            ElevatedButton(onPressed: () {
              Get.back();
            } , child: Text("back")),
          ],
        ),
      ),
    );
  }
}
