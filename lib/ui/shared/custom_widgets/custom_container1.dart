import 'package:cart_project/core/translation/app_translation.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';


import 'package:flutter/material.dart';

class CustomContiner1 extends StatelessWidget {
  const CustomContiner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(1),
      height: screenWidth(6),
      decoration: BoxDecoration(
          color: AppColors.blueColor,
          // borderRadius: BorderRadius.circular(30)), borderRadius: BorderRadius.only(
          borderRadius: BorderRadius.horizontal(left: Radius.circular(80))),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: screenWidth(20)),
            child: Text(
              tr('key_sign_in_facebook'),
              style: TextStyle(
                  fontSize: screenWidth(22), color: AppColors.whiteColor),
            ),
          ),
        ],
      ),
    );
  }
}
