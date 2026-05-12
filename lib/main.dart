import 'package:flutter/material.dart';
import 'package:getx_learn/homescrren.dart';
import 'package:getx_learn/languages.dart';
import 'package:getx_learn/next_page.dart';
import 'package:get/get.dart';
import 'package:getx_learn/pages/firstPage.dart';
import 'package:getx_learn/pages/secondPage.dart';
import 'package:getx_learn/pages/thirdPage.dart';
import 'package:getx_learn/pages/unknownpage.dart';
import 'package:getx_learn/obs/reactive_obx.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en' , 'US'),
      fallbackLocale: Locale('en' , 'US'),
      debugShowCheckedModeBanner: false,
     home: Homescrren(),
    );
  }
}

