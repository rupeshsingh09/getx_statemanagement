import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  void loginApi() async {
    try {} catch (e) {
      final response = await post(
        // ye post api h jo ki fake api site se liye h
        Uri.parse('https://reqres.in/api/login'),

        body: {'email': emailController.value.text, 'password': passwordController.value.text},
      );
      var data = jsonDecode(response.body);
      print(response.statusCode);
      print(data);

      if (response.statusCode == 200) {
        Get.snackbar('Login Successful', data['error']);
      } else {
        Get.snackbar('Login failed' , data['error']);
      }
    } catch(e){
Get.snackbar('Exception', e.toString());
    }
  }
}
