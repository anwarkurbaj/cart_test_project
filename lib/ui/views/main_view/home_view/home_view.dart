
import 'package:cart_project/core/translation/app_translation.dart';
import 'package:cart_project/ui/shared/colors.dart';
import 'package:cart_project/ui/shared/utils.dart';
import 'package:cart_project/ui/views/main_view/home_view/home_controller.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({
    super.key,
    required Null Function() openDrawer,
  });

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(body: Obx(() {
      return ListView(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(9.3), start: screenWidth(18)),
            child: Text(
              tr("key_Categories"),
              style: TextStyle(
                  fontSize: screenWidth(10), fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
              padding: EdgeInsetsDirectional.only(
                  top: screenWidth(25),
                  start: screenWidth(25),
                  end: screenWidth(25)),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.changeValue();
                        return controller.isloding.value
                            ? SpinKitCircle(
                                color: AppColors.blackColor,
                              )
                            : controller.getAllProdect();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.isCheckedall.value
                              ? AppColors.blueColor
                              : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: controller.isCheckedall.value
                                  ? AppColors.blueColor
                                  : AppColors.gryColor,
                              width: 2),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: screenHeight(20),
                                end: screenHeight(20),
                                top: screenHeight(60),
                                bottom: screenHeight(60)),
                            child: Text(
                              tr("key_all"),
                              style: TextStyle(
                                fontSize: screenWidth(15),
                                color: controller.isCheckedall.value
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        controller.changeValueelctronic();
                        setState(() {
                          controller.isloding.value?
                          SpinKitCircle(color: AppColors.redColor,):
                          controller.getAllProductcatigoryElctronic();
                        });
                             
                            
                      },
                      child: Container(

decoration: BoxDecoration(
                          color: controller.isCheckedelctronics.value
                              ? AppColors.blueColor
                              : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: controller.isCheckedelctronics.value
                                  ? AppColors.blueColor
                                  : AppColors.gryColor,
                              width: 2),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: screenHeight(20),
                                end: screenHeight(20),
                                top: screenHeight(60),
                                bottom: screenHeight(60)),
                            child: Text(
                              tr("key_electronics"),
                              style: TextStyle(
                                fontSize: screenWidth(15),
                                color: controller.isCheckedelctronics.value
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        controller.changeValuejew();
                        return controller.isloding.value
                            ? SpinKitCircle(
                                color: AppColors.blackColor,
                              )
                            : controller.getalljewelary();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.isCheckedjew.value
                              ? AppColors.blueColor
                              : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: controller.isCheckedjew.value
                                  ? AppColors.blueColor
                                  : AppColors.gryColor,
                              width: 2),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: screenHeight(20),
                                end: screenHeight(20),
                                top: screenHeight(60),
                                bottom: screenHeight(60)),
                            child: Text(
                              tr("key_jewelery"),
                              style: TextStyle(
                                fontSize: screenWidth(15),
                                color: controller.isCheckedjew()
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        controller.changeValuemenscllothies();
                        return controller.isloding.value
                            ? SpinKitCircle(
                                color: AppColors.blackColor,
                              )
                            : controller.getallmenscllothing();
                      },
                      child: Container(
                        decoration: BoxDecoration(


color: controller.isCheckedmenscllothes.value
                              ? AppColors.blueColor
                              : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: controller.isCheckedmenscllothes.value
                                  ? AppColors.blueColor
                                  : AppColors.gryColor,
                              width: 2),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: screenHeight(20),
                                end: screenHeight(20),
                                top: screenHeight(60),
                                bottom: screenHeight(60)),
                            child: Text(
                              tr("key_men's clothing"),
                              style: TextStyle(
                                fontSize: screenWidth(15),
                                color: controller.isCheckedmenscllothes.value
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {
                        controller.changeValuewomenscllithes();
                        return controller.isloding.value
                            ? SpinKitCircle(
                                color: AppColors.blackColor,
                              )
                            : controller.getallwomenscllothing();
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: controller.isCheckedwomenscllothes.value
                              ? AppColors.blueColor
                              : AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                              color: controller.isCheckedwomenscllothes.value
                                  ? AppColors.blueColor
                                  : AppColors.gryColor,
                              width: 2),
                        ),
                        child: Center(
                          child: Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: screenHeight(20),
                                end: screenHeight(20),
                                top: screenHeight(60),
                                bottom: screenHeight(60)),
                            child: Text(
                              tr("key_women's clothing"),
                              style: TextStyle(
                                fontSize: screenWidth(15),
                                color: controller.isCheckedwomenscllothes.value
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              
          Padding(
            padding: EdgeInsetsDirectional.only(
                top: screenWidth(8), start: screenWidth(15)),
            child: Text(
              'Products',
              style: TextStyle(
                  fontSize: screenWidth(10), fontWeight: FontWeight.bold),
            ),
          ),
          controller.allproductList.length == 0
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
                    itemCount: controller.allproductList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(screenWidth(40)),
                        child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                width: 1,
                              ),
                            ),
                            child: Column(
                              children: [
                                RatingBar.builder(
                                  initialRating: controller
                                      .allproductList[index].rating!.rate!,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemSize: screenWidth(50),
                                  itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
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
                                      top: screenWidth(60),
                                      bottom: screenWidth(50)),
                                  child: Image.network(
                                    controller.allproductList[index].image ??
                                        "",
                                    width: screenWidth(5),
                                    height: screenWidth(5),
                                    // fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.all(
                                      screenWidth(80)),
                                  child: Text(
                                    controller.allproductList[index].title
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
                                            color: AppColors.redColor,
                                            fontSize: screenWidth(35),

fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        controller.allproductList[index].price
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
                      );
                    },
                  ),
                )
        ],
      );
    })));
  }
}