import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("next page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children : [
            InkWell(
              onTap: () {
                Get.back(result: "this is rupesh");
              },
              child: Container(
                  height: 350,
                  width: 270,
                  color: Colors.red,

              ),
            ),
            Text(' Navigate to next page')
          ],
        ),
      ),
    );
  }
}
