import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'home_bindings.dart';
import 'home_view.dart';
import 'second_view.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: '/home',
    getPages: [
      GetPage(name: '/home', page: () => HomeView(), binding: HomeBinding()),
      GetPage(name: '/second', page: () => SecondView(), binding: HomeBinding()),
    ],
  ));
}