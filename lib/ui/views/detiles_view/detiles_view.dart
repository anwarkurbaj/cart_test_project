import 'package:cart_project/core/data/models/product_info.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/detiles_view/detiles_controller.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

int countm = 1;

class ProductDetailsView extends StatefulWidget {
  final ProductModel productInfo;
  ProductDetailsView({
    super.key,
    required this.productInfo,
  });

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  late ProductDetailsController controller;
  int c = 1;

  @override
  void initState() {
    controller = Get.put(ProductDetailsController(widget.productInfo));
    // int cCount =1;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              widget.productInfo.title ?? "",
              style: TextStyle(fontSize: screenWidth(15)),
            ),
            SizedBox(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Image.network(
                widget.productInfo.image ?? "",
                width: screenWidth(1.9),
                height: screenHeight(1.9),
              ),
            ),
            Row(
              children: [
                Text("Description :",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth(20),
                        color: AppColors.blueColor)),
                SizedBox(
                  width: screenWidth(20),
                ),
              ],
            ),
            Text(
              widget.productInfo.description ?? '',
              maxLines: 7,
            ),
            SizedBox(height: screenHeight(20)),
            Row(
              children: [
                Text("Category:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth(20),
                        color: AppColors.blueColor)),
                Text(
                  widget.productInfo.category ?? '',
                ),
              ],
            ),
            SizedBox(
              height: screenHeight(10),
            ),
            Row(
              children: [
                Text("Price:",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth(20),
                        color: AppColors.blueColor)),
                Text(widget.productInfo.price.toString())
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: screenWidth(0.784)),
              child: Container(
                height: screenWidth(5),
                decoration: BoxDecoration(
                    color: AppColors.gryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal: screenWidth(35), vertical: screenWidth(50)),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.blueColor,
                            border: Border.all(
                              color: AppColors.blueColor,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(25))),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsetsDirectional.symmetric(
                                horizontal: screenWidth(15),
                                vertical: screenWidth(100)),
                            child: InkWell(
                              onTap: () {
                                cartService.addToCart(
                                    model: controller.productInfo!, qty: c);
                              },
                              child: Text(
                                "Add To Cart",
                                style: TextStyle(
                                    fontSize: screenWidth(16),
                                    color: AppColors.whiteColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: screenWidth(6),
                      ),
                      InkWell(
                        onTap: () {
                          if (c > 0) {
                            c -= 1;
                          }
                          ;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.blueColor,
                              border: Border.all(
                                color: AppColors.blueColor,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: screenWidth(19)),
                              child: Text(
                                "-",
                                style: TextStyle(
                                    fontSize: screenWidth(20),
                                    color: AppColors.whiteColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.symmetric(
                            horizontal: screenWidth(800),
                            vertical: screenWidth(1000)),
                        child: Text(
                          "${c}",
                          style: TextStyle(fontSize: screenWidth(13)),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          c += 1;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.blueColor,
                              border: Border.all(
                                color: AppColors.blueColor,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Center(
                            child: Padding(
                              padding: EdgeInsetsDirectional.symmetric(
                                  horizontal: screenWidth(25)),
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: screenWidth(18),
                                    color: AppColors.whiteColor),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
