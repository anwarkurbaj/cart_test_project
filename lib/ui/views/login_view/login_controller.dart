import 'package:bot_toast/bot_toast.dart';
import 'package:cart_project/core/data/repository/auth_repository.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/main_view/main_view.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool isChecked = false.obs;
  RxBool isLoading = false.obs;
  TextEditingController passwordcontroller =
      TextEditingController(text: '83r5^_');
  TextEditingController usernamecontroller =
      TextEditingController(text: 'mor_2314');
  @override
  void onInit() {
    
    if (storege.getLogginInfo().isNotEmpty) {
      usernamecontroller.text = storege.getLogginInfo()[0];
      passwordcontroller.text = storege.getLogginInfo()[1];
    }
    super.onInit();
  }

  void login() {
    if (formKey.currentState!.validate()) { 
      //* Here to make api request

      isLoading.value = true;

      AuthRepository()
          .login(
              username: usernamecontroller.text,
              password: passwordcontroller.text)
          .then((value) {
        isLoading.value = false;

        value.fold((l) {
          BotToast.showText(text: l);
        }, (r) {
          storege.setTokenInfo(r);

          Get.to(MainView());
        });
      });
//*
      //     if (isChecked) {
      //       storage
      //           .setLogginInfo([
      //         usernamecontroller.text,
      //         passwordcontroller.text,
      //       ]);
      //     } else {
      //       storage
      //           .setLogginInfo([]);
      //     }
      //     BotToast.showText(
      //         text: "User is valid");
      //    storage
      //         .setLoggedIn(true);
      // Get.to(MainView());
      //   } else {
      //     BotToast.showText(
      //         text: "User is not valid");
      //   }

      //   setState(() {
      //     isLoading = false;
      //   });
      // });
      // setState(() {
      //   isLoading = false;
      // });
    }
  }

  void checkedMe() {
    isChecked.value = !isChecked.value;
  }
}
