
// import 'package:cart_project/core/translation/app_translation.dart';
// import 'package:cart_project/ui/shared/colors.dart';
// import 'package:cart_project/ui/shared/custom_widgets/custom_buttom_container.dart';
// import 'package:cart_project/ui/shared/utils.dart';
// import 'package:cart_project/ui/views/login_view/login_view.dart';
// import 'package:cart_project/ui/views/sing_up_view/sing_up_view.dart';

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class LandingView extends StatefulWidget {
//   const LandingView({super.key});

//   @override
//   State<LandingView> createState() => _LandingViewState();
// }

// class _LandingViewState extends State<LandingView> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: ListView(
//           children: [
//             Stack(children: [
//               Image.asset(
//                 'assets/images/pngs/main_background.png',
//                 fit: BoxFit.cover,
//                 width: screenWidth(1),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(4),
//                   top: screenWidth(5),
//                 ),
//                 child: Image.asset(
//                   'assets/images/pngs/logo.png',
//                   width: screenWidth(2),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(10),
//                   top: screenWidth(0.6),
//                   end: screenWidth(10),
//                 ),
//                 child: InkWell(
//                     onTap: () {
//                       Get.to(LoginView());
//                     },
//                     child: ContanierButton(
//                         Text1: tr('key_login'), gradient: true)),
//               ),
//               Padding(
//                 padding: EdgeInsetsDirectional.only(
//                   start: screenWidth(10),
//                   top: screenWidth(0.54),
//                   end: screenWidth(10),
//                 ),
//                 child: InkWell(
//                   onTap: () {
//                     Get.to(SignUpView());
//                   },
//                   child: Container(
//                     width: screenWidth(1),
//                     height: screenWidth(6.5),
//                     decoration: BoxDecoration(
//                         color: AppColors.blueColor,
//                         // borderRadius: BorderRadius.circular(30)), borderRadius: BorderRadius.only(
//                         borderRadius: BorderRadius.circular(80)),
//                     child: Center(
//                         child: Text(
//                       tr("key_sign_up"),
//                       style: TextStyle(
//                           fontSize: screenWidth(20),
//                           color: AppColors.whiteColor),
//                     )),
//                   ),
//                 ),
//               ),
//               ContanierButton(
//                 Text1: tr("key_sign_up"),
//                 colort: AppColors.blackColor,
//                 gradient: false,
//               ),
//             ]),
//           ],
//         ),
//       ),
//     );
//   }
// }
