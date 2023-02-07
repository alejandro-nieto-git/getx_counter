import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt count;

  HomeController() : count = 0.obs;

  get getCount => count;

  void increment() => count++;
}
