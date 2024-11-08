import 'dart:math';

import 'package:cart_project/ui/views/main_view/main_view.dart';


import 'package:get/get.dart';

class CheckoutController extends GetxController {
  void continueShopping() {
    Future.delayed(Duration(seconds: 2)).then((value) => Get.to(MainView()));
  }

  int orderNoFunction() {
    var random = Random();
    return random.nextInt(100);
  }
}
