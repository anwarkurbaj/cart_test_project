

import 'package:cart_project/core/enums/buttom_navication_enum.dart';
import 'package:cart_project/ui/views/main_view/allprodect_view/allprodect_view.dart';
import 'package:cart_project/ui/views/main_view/cart_view/cart_view.dart';
import 'package:cart_project/ui/views/main_view/home_view/home_view.dart';
import 'package:cart_project/ui/views/main_view/main_view_widjet/buttom_nav_par.dart';

import 'package:flutter/material.dart';



class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  PageController controller = PageController();

  BottomNavigationEnum selectedView = BottomNavigationEnum.HOME;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: scaffoldKey,
      //--------------------------------
      bottomNavigationBar: CustomNavigationBar(
        selected: selectedView,
        mainTap: (selecteEnum, index) {
          setState(() {
            selectedView = selecteEnum;
          });
          
          controller.jumpToPage(
            index,
          );
        },
      ),
      body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: controller,
          children: [
            AllProductView(), 
            // HomeView(openDrawer: () { 
            //   scaffoldKey.currentState!.openDrawer();
            //  },), 
             CartView(),

           
          ]),
    ));
  }
}


