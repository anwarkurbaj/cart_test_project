import 'package:cart_project/core/services/cart_service.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/check_out_view/check_out_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckoutView extends StatefulWidget {
  const CheckoutView({super.key});

  @override
  State<CheckoutView> createState() => _CheckoutViewState();
}

class _CheckoutViewState extends State<CheckoutView> {
  CheckoutController controller = Get.put(CheckoutController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(
                  start: screenWidth(20), end: screenWidth(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: screenWidth(20)),
                    child: Text(
                      "Your order placed successfully",
                      style: TextStyle(
                          fontSize: screenWidth(12),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: screenWidth(25),
                  ),
                  Text(
                    "Order NO :      #${controller.orderNoFunction()}",
                    style: TextStyle(
                        fontSize: screenWidth(20),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blueColor),
                  ),
                  SizedBox(
                    height: screenWidth(50),
                  ),
                  Text(
                    "Items Count:" "${cartService.cartCount}",
                    style: TextStyle(
                        fontSize: screenWidth(20),
                        fontWeight: FontWeight.bold,
                        color: AppColors.blueColor),
                  ),
                  SizedBox(
                    height: screenWidth(18),
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
                        width: screenWidth(5.2),
                      ),
                      Text(cartService.subTotal.toString(),
                          style: TextStyle(fontSize: screenWidth(18))),
                      SizedBox(
                        width: screenWidth(7.6),
                      ),
                      Text(
                        "SP",
                        style: TextStyle(
                            fontSize: screenWidth(16),
                            fontWeight: FontWeight.bold),
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
                        width: screenWidth(5.23),
                      ),
                      Text(cartService.taxAmount.toString(),
                          style: TextStyle(fontSize: screenWidth(18))),
                      SizedBox(
                        width: screenWidth(7.6),
                      ),
                      Text(
                        "SP",
                        style: TextStyle(
                            fontSize: screenWidth(16),
                            fontWeight: FontWeight.bold),
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
                        width: screenWidth(7.5),
                      ),
                      Text(cartService.deliveryFees.toString(),
                          style: TextStyle(fontSize: screenWidth(18))),
                      SizedBox(
                        width: screenWidth(7.7),
                      ),
                      Text(
                        "SP",
                        style: TextStyle(
                            fontSize: screenWidth(16),
                            fontWeight: FontWeight.bold),
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
                        width: screenWidth(7.4),
                      ),
                      Text(
                        cartService.total.toString(),
                        style: TextStyle(fontSize: screenWidth(18)),
                      ),
                      SizedBox(
                        width: screenWidth(8.5),
                      ),
                      Text(
                        "SP",
                        style: TextStyle(
                            fontSize: screenWidth(16),
                            fontWeight: FontWeight.bold),
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
                      onTap: () => controller.continueShopping(),
                      child: Container(
                        width: 388,
                        height: 51,
                        decoration: BoxDecoration(
                            color: AppColors.blueColor,
                            border: Border.all(
                              color: AppColors.blueColor,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Center(
                          child: Text(
                            "Continue Shopping",
                            style: TextStyle(
                              fontSize: screenWidth(16),
                              color: AppColors.whiteColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
