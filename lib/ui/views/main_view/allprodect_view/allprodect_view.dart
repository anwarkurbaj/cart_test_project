import 'package:cart_project/core/data/models/cart_model.dart';
import 'package:cart_project/core/translation/app_translation.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/detiles_view/detiles_view.dart';
import 'package:cart_project/ui/views/main_view/allprodect_view/allprodect_controller.dart';


import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';



// ignore: must_be_immutable
class AllProductView extends StatelessWidget {
  AllProductView({
    super.key,
  });
  ALLProductsController controller = Get.put(ALLProductsController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: ListView(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(
              top: screenWidth(9.3), start: screenWidth(18)),
          child: Text(
            tr("key_All Products"),
            style: TextStyle(
                fontSize: screenWidth(10), fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(60),
                start: screenWidth(25),
                end: screenWidth(25)),
            child: Container(
              margin: EdgeInsetsDirectional.only(
                  top: screenWidth(25),
                  start: screenWidth(25),
                  end: screenWidth(25)),
              child: Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: TextField(
                      onChanged: (qwery) {
                      controller.search(qwery);
                        
                      },
                      cursorColor: AppColors.whiteColor,
                      decoration: InputDecoration(
                          fillColor: AppColors.whiteColor,
                          filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide:
                                  BorderSide(color: AppColors.gryColor)),
                                  
                          hintText: tr("key_Search..."),
                          hintStyle: TextStyle(
                              color: Colors.grey, fontSize: screenWidth(20)),
                          prefixIcon: Container(
                            padding: EdgeInsets.all(screenWidth(20)),
                            child: Icon(Icons.search),
                          )),
                    ),
                  ),
    
                ],
              ),
            )),
         Padding(
          padding: EdgeInsetsDirectional.only(
              start: screenWidth(15),
              end: screenWidth(15),
              top: screenWidth(30)),
          child: Obx(() {
            return controller.allprodectlistsearch.length == 0
                ? SpinKitCircle(
                    color: AppColors.blackColor,
                  )
                : SingleChildScrollView(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: screenWidth(150),
                        mainAxisSpacing: screenWidth(100),
                      ),
                      shrinkWrap: true,
                      //physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.allprodectlistsearch.length,
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          onTap: () {
                            Get.to(ProductDetailsView(
                              productInfo: controller.allprodectlistsearch[index],
                            ));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(screenWidth(40)),
                            child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    width: 1,
                                  ),
                                ),
                                child: Column(
                                  children: [RatingBar.builder(
                                      initialRating: controller.allprodectlistsearch[index].rating!.rate!,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemSize: screenWidth(40),
                                      // itemPadding:
                                      //     EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: AppColors.blueColor,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          top: screenWidth(90),
                                          bottom: screenWidth(60)),
                                      child: Image.network(
                                        controller
                                                .allprodectlistsearch[index].image ??
                                            "",
                                        width: screenWidth(6),
                                        height: screenWidth(6),
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.all(
                                          screenWidth(80)),
                                      child: Text(
                                        controller.allprodectlistsearch[index].title
                                            .toString(),
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: AppColors.blackColor,
                                            fontSize: screenWidth(35),
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.only(
                                          start: screenWidth(20),
                                          end: screenWidth(20)),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Price:',
                                            style: TextStyle(
                                                color: AppColors.blackColor,
                                                fontSize: screenWidth(35),
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            controller
                                                .allprodectlistsearch[index].price
                                                .toString(),
                                            style: TextStyle(
                                                fontSize: screenWidth(35),
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )),
                          ),
                        );
                      },
                    ),
                  );
          }),
        ),
      ],
    )));
  }
}
