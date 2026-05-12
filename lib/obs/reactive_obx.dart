import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learn/obs/movie.dart';

class ReactiveObx extends StatefulWidget {
  const ReactiveObx({super.key});

  @override
  State<ReactiveObx> createState() => _ReactiveObxState();
}

class _ReactiveObxState extends State<ReactiveObx> {

  var movie = Movie(name: 'wanted', ticket: 100).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Obx")),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text("${movie.value.name}", style: const TextStyle(fontSize: 30)),
            ),
            ElevatedButton(
              onPressed: () {
                movie.value.name = 'rupesh';
              },
              child: Text("change"),
            ),
          ],
        ),
      ),
    );
  }
}
