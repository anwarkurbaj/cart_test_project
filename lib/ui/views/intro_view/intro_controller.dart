
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/landing_view/landing_view.dart';
import 'package:cart_project/ui/views/login_view/login_view.dart';

import 'package:get/get.dart';

class IntroController extends GetxController {
  List<String> descriptions = [
    'Life is a succession of lessons which must be lived to be understood.',
    'You come into the world with nothing, and the purpose of your life is to make something out of nothing.',
    ' Life is what happens while you are busy making other plans.'
  ];
  List<String> images = ['Bag', 'mobile', 'Truck'];

  List<String> backgroundimages = [
    'backgroundbagandtruck',
    'backgroundmobile',
    'backgroundbagandtruck',
  ];

  RxInt index = 0.obs;

  @override
  void onInit() {
    storege.setFirstLunch(false);
    super.onInit();
  }

  void changeDescriptions() {
    if (index.value == descriptions.length - 1)
      Get.to(LoginView());
    else if (index.value < descriptions.length - 1) index.value++;
  }
}
