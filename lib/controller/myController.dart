import 'package:get/get.dart';

class MyController extends GetxController {
  var count = 0.obs;

  incrementCounter() {
    count++;

  }
  @override
  void onInit() {
    // called every time when value changes
    ever(count, (callback) => print(ever));

    // called every time when any value changes in list
    everAll([count], (callback)  =>print("ever all"));

    // callled once when value chmages
    once(count, (callback) => print("once"));

    // called every time when value changes with duration
     debounce(count, (callback) => print("debounce "),
         time: Duration(seconds: 5));

     super.onInit();
  }
} 