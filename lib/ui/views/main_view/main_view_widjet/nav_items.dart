import 'package:cart_project/core/enums/buttom_navication_enum.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavItem extends StatelessWidget {
  final String icon;
  final bool? isSelected;
  final Function onTap;
  final String iconNon;
 

  const NavItem({
    super.key,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
    required this.iconNon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/images/pngs/${isSelected! ? icon : iconNon}.png',
              width: isSelected! ? screenWidth(8) : screenWidth(15),
            ),

            // color: isSelected! ? AppColors.redColor : AppColors.blackColor,
          ),
     
      
        ],
      ),
    );
  }
}

class NavItem2 extends StatelessWidget {
  final String icon;
  final bool? isSelected;
  final Function onTap;
  final String iconNon;
  final RxInt? n;
  const NavItem2(
      {super.key,
      required this.icon,
      this.isSelected,
      required this.onTap,
      required this.iconNon,
      this.n});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(),
            child: Image.asset(
              'assets/images/pngs/${isSelected! ? icon : iconNon}.png',
              width: isSelected! ? screenWidth(8) : screenWidth(15),
            ),

            // color: isSelected! ? AppColors.redColor : AppColors.blackColor,
          ),
          Container(
            width: screenWidth(25),
            height: screenHeight(50),
            decoration: BoxDecoration(
              color: AppColors.redColor,
              borderRadius: BorderRadiusDirectional.circular(50),

            ),
            child: Center(
              child: Text(
                '${n}', // قيمة المتغير n كنص
                style: TextStyle(color: Colors.white), // تحديد نمط النص
              ),
            ),
          ),
        ],
      ),
    );
  }
}
