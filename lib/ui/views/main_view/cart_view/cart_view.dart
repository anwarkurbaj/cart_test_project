import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/main_view/cart_view/cart_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CartView extends StatefulWidget {
  CartView({
    super.key,
  });

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  CartController controller = Get.put(CartController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsetsDirectional.all(screenWidth(20)),
      child: ListView(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(20), start: screenWidth(25)),
            child: Text(
              'Cart',
              style: TextStyle(
                  fontSize: screenWidth(10), fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: screenWidth(18),
          ),
          Container(
            width:screenWidth(1.2) ,
            height: screenHeight(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              border: Border.all(color: AppColors.blueColor)
            ),

          ),
          Divider(
            color: AppColors.blueColor,
            height: screenWidth(30),
          ),
          SizedBox(
            height: screenWidth(50),
          ),
          Row(
            children: [
              Text(
                "sub Total :",
                style: TextStyle(
                    fontSize: screenWidth(20),
                    fontWeight: FontWeight.bold,
                    color: AppColors.blueColor),
              ),
              SizedBox(
                width: screenWidth(10),
              ),
              Text(cartService.subTotal.toString(),
                  style: TextStyle(fontSize: screenWidth(18))),
              SizedBox(
                width: screenWidth(10),
              ),
              Text(
                "SP",
                style: TextStyle(
                    fontSize: screenWidth(16), fontWeight: FontWeight.bold),
              )
            ],
          ),
          Divider(
            color: AppColors.blueColor,
            height: screenWidth(50),
          ),
          Row(
            children: [
              Text(
                "Tax :",
                style: TextStyle(
                    fontSize: screenWidth(20),
                    fontWeight: FontWeight.bold,
                    color: AppColors.blueColor),
              ),
              SizedBox(
                width: screenWidth(7),
              ),
              Text(cartService.taxAmount.toString(),
                  style: TextStyle(fontSize: screenWidth(18))),
              SizedBox(
                width: screenWidth(3),
              ),
              Text(
                "SP",
                style: TextStyle(
                    fontSize: screenWidth(16), fontWeight: FontWeight.bold),
              )
            ],
          ),
          Divider(
            color: AppColors.blueColor,
            height: screenWidth(50),
          ),
          Row(
            children: [
              Text(
                "Delivery Fees :",
                style: TextStyle(
                    fontSize: screenWidth(20),
                    fontWeight: FontWeight.bold,
                    color: AppColors.blueColor),
              ),
              SizedBox(
                width: screenWidth(40),
              ),
              Text(cartService.deliveryFees.toString(),
                  style: TextStyle(fontSize: screenWidth(18))),
              SizedBox(
                width: screenWidth(3),
              ),
              Text(
                "SP",
                style: TextStyle(
                    fontSize: screenWidth(16), fontWeight: FontWeight.bold),
              )
            ],
          ),
          Divider(
            color: AppColors.blueColor,
            height: screenWidth(50),
          ),
          Row(
            children: [
              Text(
                "Total :",
                style: TextStyle(
                    fontSize: screenWidth(20),
                    fontWeight: FontWeight.bold,
                    color: AppColors.redColor),
              ),
              SizedBox(
                width: screenWidth(10),
              ),
              Text(
                cartService.total.toString(),
                style: TextStyle(fontSize: screenWidth(18)),
              ),
              SizedBox(
                width: screenWidth(3),
              ),
              Text(
                "SP",
                style: TextStyle(
                    fontSize: screenWidth(16), fontWeight: FontWeight.bold),
              )
            ],
          ),
          Divider(
            color: AppColors.blueColor,
            height: screenWidth(15),
          ),
          Padding(
            padding: EdgeInsetsDirectional.only(top: screenWidth(1.25)),
            child: InkWell(
              onTap: () => controller.placedOrder(),
              child: Container(
                width: 388,
                height: 51,
                decoration: BoxDecoration(
                    color: AppColors.blueColor,
                    border: Border.all(
                      color: AppColors.blueColor,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Center(
                  child: Text(
                    "Placed Order",
                    style: TextStyle(
                      fontSize: screenWidth(16),
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ),
        
               InkWell(
              onTap: () { controller.emptyCart();
              },
              child: Center(
                heightFactor: screenWidth(160),
                child: Text(
                  "Empty Cart",
                  style: TextStyle(
                      fontSize: screenWidth(20), color: AppColors.redColor),
                ),
              ),
            )
        
        
        
        ],
      ),
    )));
  }
}
