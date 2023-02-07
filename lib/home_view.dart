import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter/second_view.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(context) => Scaffold(
        appBar: AppBar(title: Text("First counter")),
        body: Center(
          child: Obx(() => Text("${controller.getCount}")),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: controller.increment,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.navigate_next),
              label: "Next",
            ),
          ],
          onTap: (index) {
            if (index == 1) {
              Get.to(SecondView());
            }
          },
        ),
      );
}
