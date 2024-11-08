// import 'package:cart_project/core/translation/app_translation.dart';
// import 'package:cart_project/ui/shared/colors.dart';
// import 'package:cart_project/ui/shared/utils.dart';
// import 'package:cart_project/ui/views/intro_view/intro_controller.dart';
// import 'package:dots_indicator/dots_indicator.dart';

// import 'package:flutter/material.dart';
// //import 'package:shared_preferences/shared_preferences.dart';
// import 'package:get/get.dart';

// class IntroView extends StatefulWidget {
//   const IntroView({super.key});

//   @override
//   State<IntroView> createState() => _IntroViewState();
// }

// class _IntroViewState extends State<IntroView> {
//   IntroController controller = Get.put(IntroController());
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//           body: Column(
//         children: [
//           Obx(() {
//             return Column(
//               children: [
//                 Stack(
//                   children: [
//                     Container(
//                       width: screenWidth(1),
//                       height: screenWidth(4),
//                       color: AppColors.blueColor,
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.only(
//                         top: screenWidth(5.3),
//                       ),
//                       child: Transform.scale(
//                         scaleY: screenWidth(185),
//                         scaleX: screenWidth(220),
//                         child: Image.asset(
//                           'assets/images/pngs/shams.png',
//                           width: screenWidth(1),
//                           height: screenWidth(3),
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.only(
//                         top: screenWidth(1.5),
//                         start: screenWidth(10),
//                         end: screenWidth(10),
//                       ),
//                       child: Text(
//                         controller.descriptions[controller.index.value],
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontSize: screenWidth(25),
//                         ),
//                       ),
//                     ),
//                     // Positioned(
//                     //   top: screenWidth(1.2),
//                     //   child: Image.asset(
//                     //     'assets/images/pngs/${controller.backgroundimages[controller.index.value]}.png',
//                     //     width: screenWidth(1),
//                     //     height: screenWidth(1.5),
//                     //   ),
//                     // ),
//                     Padding(
//                       padding: EdgeInsetsDirectional.only(
//                         top: screenWidth(0.7),
//                       ),
//                       child: Container(
//                         width: screenWidth(1),
//                         height: screenWidth(1.5),
//                         decoration: BoxDecoration(
//                             gradient: LinearGradient(colors: [
//                           AppColors.blueColor,
//                           AppColors.blueColor,
//                           AppColors.blueColor,
//                         ])),
//                       ),
//                     ),
//                     Positioned(
//                       top: screenWidth(1.1),
//                       left: screenWidth(7),
//                       child: Image.asset(
//                         'assets/images/pngs/${controller.images[controller.index.value]}.png',
//                         width: screenWidth(1.3),
//                         height: screenWidth(1.4),
//                       ),
//                     ),
//                     Column(
//                       children: [
//                         Center(
//                           child: Padding(
//                             padding: EdgeInsetsDirectional.only(
//                               top: screenWidth(0.54),
//                             ),


//                             child: DotsIndicator(
//                               decorator: DotsDecorator(
//                                 activeColor: AppColors.whiteColor,
//                                 color: AppColors.orangeColor,
//                                 activeShape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10.0),
//                                   side: BorderSide(
//                                     color: AppColors.whiteColor,
//                                     width: screenWidth(40),
//                                   ),
//                                 ),
//                               ),
//                               dotsCount: controller.descriptions.length,
//                               position: controller.index.toDouble().toInt(),
//                               // position: index,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: screenHeight(290),),
                        
//                         InkWell(
//                           onTap: () {
//                             controller.changeDescriptions();
//                           },
//                           child: Center(
//                             child: Positioned(
//                               top: 40,
//                               bottom: 50,
//                               child: Container(
//                                 width: screenWidth(5),
//                                 height: screenHeight(15),
//                                 decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(60),
//                                   color: AppColors.orangeColor,
//                                 ),
                                
//                                 child: Center(
                                  
//                                   child: Text(
//                                     controller.index ==
//                                             controller.descriptions.length - 1
//                                         ? tr("key_finish")
//                                         : tr("key_next"),
//                                     style: TextStyle(
//                                         fontSize: screenWidth(20),
//                                         fontWeight: FontWeight.bold,
//                                         color: AppColors.whiteColor),
//                                   ),
                                
                                  
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ],
//             );
//           })
//         ],
//       )),
//     );
//   }
// }
import 'package:cart_project/core/translation/app_translation.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/intro_view/intro_controller.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key}) ;

  @override
  _IntroViewState createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  IntroController controller = Get.put(IntroController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Obx(() {
                return Stack(
                  children: [
                    Container(
                      width: screenWidth(1),
                      height: screenWidth(4),
                      color: AppColors.blueColor,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: screenWidth(5.3),
                      ),
                      child: Transform.scale(
                        scaleY: screenWidth(185),
                        scaleX: screenWidth(220),
                        child: Image.asset(
                          'assets/images/pngs/shams.png',
                          width: screenWidth(1),
                          height: screenWidth(3),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: screenWidth(1.5),
                        start: screenWidth(10),
                        end: screenWidth(10),
                      ),
                      child: Text(
                        controller.descriptions[controller.index.value],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: screenWidth(25),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.only(
                        top: screenWidth(0.7),
                      ),
                      child: Container(
                        width: screenWidth(1),
                        height: screenWidth(1.5),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                            AppColors.blueColor,
                            AppColors.blueColor,
                            AppColors.blueColor,
                          ]),
                        ),
                      ),
                    ),
                    Positioned(
                      top: screenWidth(1.1),
                      left: screenWidth(7),
                      child: Image.asset(
                        'assets/images/pngs/${controller.images[controller.index.value]}.png',
                        width: screenWidth(1.3),
                        height: screenWidth(1.4),
                      ),
                    ),
                    Column(
                      children: [
                        Center(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                              top: screenWidth(0.54),
                            ),
                            child: DotsIndicator(
                              decorator: DotsDecorator(
                                activeColor: AppColors.whiteColor,
                                color: AppColors.orangeColor,
                                activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(
                                    color: AppColors.whiteColor,
                                    width: screenWidth(40),
                                  ),
                                ),
                              ),
                              dotsCount: controller.descriptions.length,
                              position: controller.index.toDouble().toInt(),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight(290)),
                        InkWell(
                          onTap: () {
                            controller.changeDescriptions();
                          },
                          child: Center(
                            child: Container(
                              width: screenWidth(5),
                              height: screenHeight(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                color: AppColors.orangeColor,
                              ),
                              child: Center(
                                child: Text(
                                  controller.index ==
                                          controller.descriptions.length - 1
                                      ? tr("key_finish")
                                      : tr("key_next"),
                                  style: TextStyle(
                                    fontSize: screenWidth(20),
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
