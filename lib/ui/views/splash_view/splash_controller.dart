

import 'package:cart_project/ui/shared/utils.dart';

import 'package:cart_project/ui/views/landing_view/landing_view.dart';
import 'package:cart_project/ui/views/language_view/language_view.dart';
import 'package:cart_project/ui/views/main_view/main_view.dart';


import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Future.delayed(Duration(seconds: 4)).then((value) => Get.off(
          storege.getFirstLunch()
              ? LanguageView()
              : storege.getLoggedIn()
                 ?Get.to(MainView()):
                MainView()
                
                
        ));
    super.onInit();
  }

  void reload() {
    onInit();
  }
}
