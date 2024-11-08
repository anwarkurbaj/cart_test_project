import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  TextEditingController usernamecontroller =
      TextEditingController(text: 'User@gmail.com');
  TextEditingController passwordcontroller =
      TextEditingController(text: 'P@ssw0rd');
  TextEditingController confirmpasswordcontroller =
      TextEditingController(text: 'P@ssw0rd');

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  RxBool isLoading = false.obs;
  void isLoad() {
    if (formKey.currentState!.validate()) {
      //* Here to make api request
      isLoading.value = true;
    }
  }
}
