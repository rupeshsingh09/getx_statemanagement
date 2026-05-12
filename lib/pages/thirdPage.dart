import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_learn/next_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("thirdPage"),
      ),
      body: Center(
        child:
             Column(
               children: [
                 ElevatedButton(onPressed: () {
                   Get.back();
                 }, child: Text("back")),
               ],
             ),
      ),
    );
  }
}
