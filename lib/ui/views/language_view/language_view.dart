
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/intro_view/intro_view.dart';
import 'package:cart_project/ui/views/landing_view/landing_view.dart';
import 'package:cart_project/ui/views/main_view/main_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageView extends StatelessWidget {
  const LanguageView({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: screenWidth(112), bottom: screenHeight(5)),
              child: Image.asset(
                "assets/images/pngs/icon-language.png",
                width: screenWidth(2.2),
                height: screenHeight(4),
              ),
            ),
            Text(
              "PLEASE CHOOSE YOUR LANGUAGE",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: screenHeight(30),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      
                      Get.updateLocale(Locale('en', 'US'));
                      Get.offAll(IntroView());
                    },
                    child: Container(
                      width: screenWidth(2.5),
                      height: screenHeight(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "ENGLISH",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(300),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('ar', 'SA'));
                      Get.offAll(IntroView());
                    },
                    child: Container(
                      width: screenWidth(2.5),
                      height: screenHeight(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "ARABIC",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight(300),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('fr', 'FR'));
                      Get.offAll(IntroView());
                    },
                    child: Container(
                      width: screenWidth(2.5),
                      height: screenHeight(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Center(
                        child: Text(
                          "FRENCH",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
