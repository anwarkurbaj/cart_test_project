import 'package:cart_project/ui/shared/utils.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'splash_controller.dart';

// ignore: must_be_immutable
class SplashView extends StatelessWidget {
  SplashView({super.key});

  //!
  SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/images/pngs/main_background.png',
              fit: BoxFit.cover,
              width: screenWidth(1),
            ),
            Center(
                child: Image.asset(
              'assets/images/pngs/logo.png',
              width: screenWidth(2),
            )),
          ],
        ),
      ),
    );
  }
}

// InkWell(ontap:(){})
