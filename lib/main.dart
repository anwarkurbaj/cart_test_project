import 'package:cart_project/app/my_app.dart';
import 'package:cart_project/core/data/models/product_info.dart';
import 'package:cart_project/core/data/repository/prodect_repositry.dart';
import 'package:cart_project/core/data/repository/shared_prefrence_repository.dart';
import 'package:cart_project/core/services/cart_service.dart';
import 'package:cart_project/core/services/connectivity_service.dart';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

 
  //Get.lazyPut(() => ChageLanguageUtil());
  Get.lazyPut(() => SharedPrefrenceRepository());
  Get.lazyPut(() => ProductModel());

  //! result function futuer => get async
//! creat controller to map
//! resutt await api

  await Get.putAsync(() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  });
  Get.put(ConnectivityService());
  Get.put(Connectivity());
  //Get.lazyPut(() => PostRepository());
  Get.lazyPut(() => ProductRepository());
  Get.put(CartService());
  runApp(MyApp());
}
