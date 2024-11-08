
import 'package:cart_project/core/enums/buttom_navication_enum.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/main_view/main_view_widjet/nav_items.dart';


import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final BottomNavigationEnum selected;
  final Function(BottomNavigationEnum, int) mainTap;

  const CustomNavigationBar(
      {super.key, required this.selected, required this.mainTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.gryColor,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavItem(
            onTap: () {
              mainTap(BottomNavigationEnum.HOME, 0);
            },
            icon: "products.png",
            iconNon: "productsnon.png",
            isSelected: selected == BottomNavigationEnum.HOME,
          ),
          NavItem(
            onTap: () {
              mainTap(BottomNavigationEnum.ALLPRODUCT, 1);
            },
            icon: "home.png",
            iconNon: "homenon.png",
            isSelected: selected == BottomNavigationEnum.ALLPRODUCT,
          ),
          NavItem2(
            onTap: () {
              mainTap(BottomNavigationEnum.CART, 2);
            },
            icon: "cart.png",
            iconNon: "cartnon.png",
            isSelected: selected == BottomNavigationEnum.CART,
            n: cartService.cartCount
          ),
        ],
      ),
    );
  }
}
