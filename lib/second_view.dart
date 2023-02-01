import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class SecondView extends GetView<HomeController> {

  @override
  Widget build(context) => Scaffold(
      appBar: AppBar(title: Text("Second counter")),
      body: Center(
        child: Obx(() => Text("${controller.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: controller.increment,
        foregroundColor: Colors.amber[800],
      ));
}