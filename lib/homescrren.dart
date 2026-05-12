import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_learn/image_picker_controller.dart';
import 'package:getx_learn/login_controller.dart';

class Homescrren extends StatefulWidget {
  const Homescrren({super.key});

  @override
  State<Homescrren> createState() => _HomescrrenState();
}

class _HomescrrenState extends State<Homescrren> {

 LoginController controller = Get.put(LoginController());
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(" Api tutorial by The tech brother")),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              controller: controller.emailController.value,
              decoration: InputDecoration(
                hintText: 'E mail',
              ),
            ),
            SizedBox(height: 20,),
            TextFormField(
              controller: controller.passwordController.value,
              decoration: InputDecoration(
                hintText: 'password',
              ),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: () {
                controller.loginApi();
              },
              child: Container(
              height: 45,
              color: Colors.grey,
              child: Center(
                child: Text('Login'),
              ),
            ),)
          ],
        ),
      ),
    );
  }
}
