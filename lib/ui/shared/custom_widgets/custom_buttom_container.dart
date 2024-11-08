
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';

import 'package:flutter/material.dart';

class ContanierButton extends StatelessWidget {
  final String Text1;
  final Color colort;
  final bool gradient;
  const ContanierButton({
    super.key,
    required this.Text1,
    this.colort = AppColors.whiteColor,
    required this.gradient,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1),
      height: screenWidth(6.5),
      decoration: BoxDecoration(
          gradient: gradient == true
              ? LinearGradient(// gives the Gradient color
                  colors: [
                  AppColors.blueColor,
                  AppColors.blueColor,
                  AppColors.blueColor
                ])
              : LinearGradient(colors: [AppColors.whiteColor])

          // borderRadius: BorderRadius.circular(30)), borderRadius: BorderRadius.only(
          ,
          borderRadius: BorderRadius.circular(80)),
      child: Center(
          child: Text(
        Text1,
        style: TextStyle(
          fontSize: screenWidth(20),
          color: colort,
        ),
      )),
    );
  }
}
