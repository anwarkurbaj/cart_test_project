import 'package:cart_project/core/translation/app_translation.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/custom_widgets/custom_container1.dart';
import 'package:cart_project/ui/shared/custom_widgets/custom_textfiled.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/login_view/login_view.dart';
import 'package:cart_project/ui/views/sing_up_view/sing_up_controller.dart';


import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  SignUpController controller = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/pngs/main_background.png',
              fit: BoxFit.cover,
              width: screenWidth(1),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(2.05),
                start: screenWidth(7.3),
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.off(LoginView());
                    },
                    child: Text(
                      tr("key_login"),
                      style: TextStyle(
                          fontSize: screenWidth(20),
                          color: AppColors.blackColor),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.only(
                      start: screenWidth(8),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.off(SignUpView());
                      },
                      child: Text(
                        tr("key_sign_up"),
                        style: TextStyle(
                            fontSize: screenWidth(20),
                            color: AppColors.whiteColor),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(
                top: screenWidth(1.4),
                start: screenWidth(6.3),
              ),
              child: Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomTextFormFiled(
                      HintText: tr("key_email"),
                      controller: controller.usernamecontroller,
                      validator: (value) {
                        if (value!.isEmpty) return tr("key_email_message");
                        // else if (!isEmailValid(value))
                        //   return "Please enter valid email";
                        return null;
                      },
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: screenWidth(500),
                        bottom: screenWidth(500),
                      ),
                      child: CustomTextFormFiled(
                        showpassword: true,
                        HintText: tr("key_password"),
                        controller: controller.passwordcontroller,
                        validator: (value) {
                          if (value!.isEmpty) return tr("key_password_message");
                          // else if (!isValidPassword(value))
                          //   return "Please enter valid password :)";
                          return null;
                        },
                      ),
                    ),
                    CustomTextFormFiled(
                      showpassword: true,
                      HintText: tr('key_Confirm_password'),
                      controller: controller.confirmpasswordcontroller,
                      validator: (value) {
                        if (value!.isEmpty)
                          return tr("key_confirmpass_message");
                       

                        return null;
                      },
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.only(
                          top: screenWidth(20),
                          start: screenWidth(11),
                          bottom: screenWidth(8.3),
                        ),
                        child: Obx(() {
                          return controller.isLoading.value
                              ? SpinKitCircle(
                                  color: AppColors.blackColor,
                                )
                              : InkWell(
                                  onTap: () {
                                    controller.isLoad;
                                  },
                                  child: Text(
                                    tr("key_sign_up"),
                                    style: TextStyle(
                                      color: AppColors.whiteColor,
                                      fontSize: screenWidth(20),
                                    ),
                                  ),
                                );
                        })),
                    CustomContiner1(),
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    ));
  }
}
